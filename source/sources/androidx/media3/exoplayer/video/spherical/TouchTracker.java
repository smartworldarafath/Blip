package androidx.media3.exoplayer.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.opengl.Matrix;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.media3.exoplayer.video.spherical.OrientationListener;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TouchTracker extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, OrientationListener.Listener {
    public final Listener l;
    public final GestureDetector n;
    public final PointF j = new PointF();
    public final PointF k = new PointF();
    public final float m = 25.0f;
    public volatile float o = 3.1415927f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Listener {
    }

    public TouchTracker(Context context, Listener listener) {
        this.l = listener;
        this.n = new GestureDetector(context, this);
    }

    @Override // androidx.media3.exoplayer.video.spherical.OrientationListener.Listener
    public final void a(float[] fArr, float f) {
        this.o = -f;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        this.j.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        float x = (motionEvent2.getX() - this.j.x) / this.m;
        float y = motionEvent2.getY();
        PointF pointF = this.j;
        float f3 = (y - pointF.y) / this.m;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d = this.o;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        PointF pointF2 = this.k;
        pointF2.x -= (cos * x) - (sin * f3);
        float f4 = (cos * f3) + (sin * x) + pointF2.y;
        pointF2.y = f4;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f4));
        Listener listener = this.l;
        PointF pointF3 = this.k;
        SphericalGLSurfaceView.Renderer renderer = (SphericalGLSurfaceView.Renderer) listener;
        synchronized (renderer) {
            float f5 = pointF3.y;
            renderer.p = f5;
            Matrix.setRotateM(renderer.n, 0, -f5, (float) Math.cos(renderer.q), (float) Math.sin(renderer.q), 0.0f);
            Matrix.setRotateM(renderer.o, 0, -pointF3.x, 0.0f, 1.0f, 0.0f);
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        return SphericalGLSurfaceView.this.performClick();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return this.n.onTouchEvent(motionEvent);
    }
}

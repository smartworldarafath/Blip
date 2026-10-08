package androidx.media3.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AspectRatioFrameLayout extends FrameLayout {
    public static final /* synthetic */ int m = 0;
    public final AspectRatioUpdateDispatcher j;
    public float k;
    public int l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface AspectRatioListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class AspectRatioUpdateDispatcher implements Runnable {
        public boolean j;

        public AspectRatioUpdateDispatcher() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.j = false;
            int i = AspectRatioFrameLayout.m;
        }
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.l = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.a, 0, 0);
            try {
                this.l = obtainStyledAttributes.getInt(0, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.j = new AspectRatioUpdateDispatcher();
    }

    public int getResizeMode() {
        return this.l;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (r4 > 0.0f) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004a, code lost:
    
        r2 = r2 * r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004d, code lost:
    
        r1 = r1 / r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x005c, code lost:
    
        if (r4 > 0.0f) goto L23;
     */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i, int i2) {
        float f;
        super.onMeasure(i, i2);
        if (this.k > 0.0f) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            float f2 = measuredWidth;
            float f3 = measuredHeight;
            float f4 = (this.k / (f2 / f3)) - 1.0f;
            float abs = Math.abs(f4);
            AspectRatioUpdateDispatcher aspectRatioUpdateDispatcher = this.j;
            if (abs <= 0.01f) {
                if (!aspectRatioUpdateDispatcher.j) {
                    aspectRatioUpdateDispatcher.j = true;
                    AspectRatioFrameLayout.this.post(aspectRatioUpdateDispatcher);
                    return;
                }
                return;
            }
            int i3 = this.l;
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 == 4) {
                            f = this.k;
                        }
                    } else {
                        float f5 = f3 * this.k;
                        measuredWidth = (int) f5;
                    }
                } else {
                    float f6 = f2 / this.k;
                    measuredHeight = (int) f6;
                }
            } else {
                f = this.k;
            }
            if (!aspectRatioUpdateDispatcher.j) {
                aspectRatioUpdateDispatcher.j = true;
                AspectRatioFrameLayout.this.post(aspectRatioUpdateDispatcher);
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
        }
    }

    public void setAspectRatio(float f) {
        if (this.k != f) {
            this.k = f;
            requestLayout();
        }
    }

    public void setResizeMode(int i) {
        if (this.l != i) {
            this.l = i;
            requestLayout();
        }
    }

    public void setAspectRatioListener(AspectRatioListener aspectRatioListener) {
    }
}

package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LinearSmoothScroller extends RecyclerView.SmoothScroller {
    public final DisplayMetrics k;
    public float m;
    public final LinearInterpolator i = new LinearInterpolator();
    public final DecelerateInterpolator j = new DecelerateInterpolator();
    public boolean l = false;
    public int n = 0;
    public int o = 0;

    public LinearSmoothScroller(Context context) {
        this.k = context.getResources().getDisplayMetrics();
    }

    public abstract float e(DisplayMetrics displayMetrics);

    public int f(int i) {
        float abs = Math.abs(i);
        if (!this.l) {
            this.m = e(this.k);
            this.l = true;
        }
        return (int) Math.ceil(abs * this.m);
    }
}

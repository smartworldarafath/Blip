package androidx.compose.material.ripple;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RippleContainer extends ViewGroup {
    public final int j;
    public final ArrayList k;
    public final ArrayList l;
    public final RippleHostMap m;
    public int n;

    public RippleContainer(Context context) {
        super(context);
        this.j = 5;
        ArrayList arrayList = new ArrayList();
        this.k = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.l = arrayList2;
        this.m = new RippleHostMap();
        setClipChildren(false);
        View view = new View(context);
        addView(view);
        arrayList.add(view);
        arrayList2.add(view);
        this.n = 1;
        setTag(R.id.hide_in_inspector_tag, Boolean.TRUE);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}

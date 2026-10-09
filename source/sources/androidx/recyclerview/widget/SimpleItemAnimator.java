package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SimpleItemAnimator extends RecyclerView.ItemAnimator {
    public boolean g;

    /* JADX WARN: Type inference failed for: r9v7, types: [java.lang.Object, androidx.recyclerview.widget.DefaultItemAnimator$ChangeInfo] */
    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final boolean a(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        int i;
        int i2;
        int i3 = itemHolderInfo.a;
        int i4 = itemHolderInfo.b;
        if (viewHolder2.o()) {
            int i5 = itemHolderInfo.a;
            i2 = itemHolderInfo.b;
            i = i5;
        } else {
            i = itemHolderInfo2.a;
            i2 = itemHolderInfo2.b;
        }
        DefaultItemAnimator defaultItemAnimator = (DefaultItemAnimator) this;
        if (viewHolder == viewHolder2) {
            return defaultItemAnimator.g(viewHolder, i3, i4, i, i2);
        }
        View view = viewHolder.a;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        float alpha = view.getAlpha();
        defaultItemAnimator.l(viewHolder);
        view.setTranslationX(translationX);
        view.setTranslationY(translationY);
        view.setAlpha(alpha);
        View view2 = viewHolder2.a;
        defaultItemAnimator.l(viewHolder2);
        view2.setTranslationX(-((int) ((i - i3) - translationX)));
        view2.setTranslationY(-((int) ((i2 - i4) - translationY)));
        view2.setAlpha(0.0f);
        ArrayList arrayList = defaultItemAnimator.k;
        ?? obj = new Object();
        obj.a = viewHolder;
        obj.b = viewHolder2;
        obj.c = i3;
        obj.d = i4;
        obj.e = i;
        obj.f = i2;
        arrayList.add(obj);
        return true;
    }

    public abstract boolean g(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4);
}

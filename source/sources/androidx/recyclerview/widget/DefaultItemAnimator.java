package androidx.recyclerview.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.q;
import io.sentry.d;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DefaultItemAnimator extends SimpleItemAnimator {
    public static TimeInterpolator s;
    public ArrayList h;
    public ArrayList i;
    public ArrayList j;
    public ArrayList k;
    public ArrayList l;
    public ArrayList m;
    public ArrayList n;
    public ArrayList o;
    public ArrayList p;
    public ArrayList q;
    public ArrayList r;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ChangeInfo {
        public RecyclerView.ViewHolder a;
        public RecyclerView.ViewHolder b;
        public int c;
        public int d;
        public int e;
        public int f;

        public final String toString() {
            StringBuilder sb = new StringBuilder("ChangeInfo{oldHolder=");
            sb.append(this.a);
            sb.append(", newHolder=");
            sb.append(this.b);
            sb.append(", fromX=");
            sb.append(this.c);
            sb.append(", fromY=");
            sb.append(this.d);
            sb.append(", toX=");
            sb.append(this.e);
            sb.append(", toY=");
            return q.j(sb, this.f, '}');
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class MoveInfo {
        public RecyclerView.ViewHolder a;
        public int b;
        public int c;
        public int d;
        public int e;
    }

    public static void h(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((RecyclerView.ViewHolder) arrayList.get(size)).a.animate().cancel();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final void d(RecyclerView.ViewHolder viewHolder) {
        ArrayList arrayList = this.l;
        ArrayList arrayList2 = this.m;
        ArrayList arrayList3 = this.n;
        View view = viewHolder.a;
        view.animate().cancel();
        ArrayList arrayList4 = this.j;
        int size = arrayList4.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((MoveInfo) arrayList4.get(size)).a == viewHolder) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                c(viewHolder);
                arrayList4.remove(size);
            }
        }
        j(this.k, viewHolder);
        if (this.h.remove(viewHolder)) {
            view.setAlpha(1.0f);
            c(viewHolder);
        }
        if (this.i.remove(viewHolder)) {
            view.setAlpha(1.0f);
            c(viewHolder);
        }
        for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList5 = (ArrayList) arrayList3.get(size2);
            j(arrayList5, viewHolder);
            if (arrayList5.isEmpty()) {
                arrayList3.remove(size2);
            }
        }
        for (int size3 = arrayList2.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList6 = (ArrayList) arrayList2.get(size3);
            int size4 = arrayList6.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (((MoveInfo) arrayList6.get(size4)).a == viewHolder) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c(viewHolder);
                    arrayList6.remove(size4);
                    if (arrayList6.isEmpty()) {
                        arrayList2.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = arrayList.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList.get(size5);
            if (arrayList7.remove(viewHolder)) {
                view.setAlpha(1.0f);
                c(viewHolder);
                if (arrayList7.isEmpty()) {
                    arrayList.remove(size5);
                }
            }
        }
        this.q.remove(viewHolder);
        this.o.remove(viewHolder);
        this.r.remove(viewHolder);
        this.p.remove(viewHolder);
        i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final void e() {
        ArrayList arrayList = this.k;
        ArrayList arrayList2 = this.n;
        ArrayList arrayList3 = this.l;
        ArrayList arrayList4 = this.m;
        ArrayList arrayList5 = this.i;
        ArrayList arrayList6 = this.h;
        ArrayList arrayList7 = this.j;
        int size = arrayList7.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            MoveInfo moveInfo = (MoveInfo) arrayList7.get(size);
            View view = moveInfo.a.a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            c(moveInfo.a);
            arrayList7.remove(size);
        }
        for (int size2 = arrayList6.size() - 1; size2 >= 0; size2--) {
            c((RecyclerView.ViewHolder) arrayList6.get(size2));
            arrayList6.remove(size2);
        }
        int size3 = arrayList5.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) arrayList5.get(size3);
            viewHolder.a.setAlpha(1.0f);
            c(viewHolder);
            arrayList5.remove(size3);
        }
        for (int size4 = arrayList.size() - 1; size4 >= 0; size4--) {
            ChangeInfo changeInfo = (ChangeInfo) arrayList.get(size4);
            RecyclerView.ViewHolder viewHolder2 = changeInfo.a;
            if (viewHolder2 != null) {
                k(changeInfo, viewHolder2);
            }
            RecyclerView.ViewHolder viewHolder3 = changeInfo.b;
            if (viewHolder3 != null) {
                k(changeInfo, viewHolder3);
            }
        }
        arrayList.clear();
        if (!f()) {
            return;
        }
        for (int size5 = arrayList4.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList8 = (ArrayList) arrayList4.get(size5);
            for (int size6 = arrayList8.size() - 1; size6 >= 0; size6--) {
                MoveInfo moveInfo2 = (MoveInfo) arrayList8.get(size6);
                View view2 = moveInfo2.a.a;
                view2.setTranslationY(0.0f);
                view2.setTranslationX(0.0f);
                c(moveInfo2.a);
                arrayList8.remove(size6);
                if (arrayList8.isEmpty()) {
                    arrayList4.remove(arrayList8);
                }
            }
        }
        for (int size7 = arrayList3.size() - 1; size7 >= 0; size7--) {
            ArrayList arrayList9 = (ArrayList) arrayList3.get(size7);
            for (int size8 = arrayList9.size() - 1; size8 >= 0; size8--) {
                RecyclerView.ViewHolder viewHolder4 = (RecyclerView.ViewHolder) arrayList9.get(size8);
                viewHolder4.a.setAlpha(1.0f);
                c(viewHolder4);
                arrayList9.remove(size8);
                if (arrayList9.isEmpty()) {
                    arrayList3.remove(arrayList9);
                }
            }
        }
        for (int size9 = arrayList2.size() - 1; size9 >= 0; size9--) {
            ArrayList arrayList10 = (ArrayList) arrayList2.get(size9);
            for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                ChangeInfo changeInfo2 = (ChangeInfo) arrayList10.get(size10);
                RecyclerView.ViewHolder viewHolder5 = changeInfo2.a;
                if (viewHolder5 != null) {
                    k(changeInfo2, viewHolder5);
                }
                RecyclerView.ViewHolder viewHolder6 = changeInfo2.b;
                if (viewHolder6 != null) {
                    k(changeInfo2, viewHolder6);
                }
                if (arrayList10.isEmpty()) {
                    arrayList2.remove(arrayList10);
                }
            }
        }
        h(this.q);
        h(this.p);
        h(this.o);
        h(this.r);
        ArrayList arrayList11 = this.b;
        if (arrayList11.size() <= 0) {
            arrayList11.clear();
        } else {
            arrayList11.get(0).getClass();
            d.i();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final boolean f() {
        if (this.i.isEmpty() && this.k.isEmpty() && this.j.isEmpty() && this.h.isEmpty() && this.p.isEmpty() && this.q.isEmpty() && this.o.isEmpty() && this.r.isEmpty() && this.m.isEmpty() && this.l.isEmpty() && this.n.isEmpty()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, androidx.recyclerview.widget.DefaultItemAnimator$MoveInfo] */
    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public final boolean g(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
        View view = viewHolder.a;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) viewHolder.a.getTranslationY());
        l(viewHolder);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            c(viewHolder);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        ArrayList arrayList = this.j;
        ?? obj = new Object();
        obj.a = viewHolder;
        obj.b = translationX;
        obj.c = translationY;
        obj.d = i3;
        obj.e = i4;
        arrayList.add(obj);
        return true;
    }

    public final void i() {
        if (!f()) {
            ArrayList arrayList = this.b;
            if (arrayList.size() <= 0) {
                arrayList.clear();
            } else {
                arrayList.get(0).getClass();
                d.i();
            }
        }
    }

    public final void j(ArrayList arrayList, RecyclerView.ViewHolder viewHolder) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ChangeInfo changeInfo = (ChangeInfo) arrayList.get(size);
            if (k(changeInfo, viewHolder) && changeInfo.a == null && changeInfo.b == null) {
                arrayList.remove(changeInfo);
            }
        }
    }

    public final boolean k(ChangeInfo changeInfo, RecyclerView.ViewHolder viewHolder) {
        if (changeInfo.b == viewHolder) {
            changeInfo.b = null;
        } else if (changeInfo.a == viewHolder) {
            changeInfo.a = null;
        } else {
            return false;
        }
        View view = viewHolder.a;
        View view2 = viewHolder.a;
        view.setAlpha(1.0f);
        view2.setTranslationX(0.0f);
        view2.setTranslationY(0.0f);
        c(viewHolder);
        return true;
    }

    public final void l(RecyclerView.ViewHolder viewHolder) {
        if (s == null) {
            s = new ValueAnimator().getInterpolator();
        }
        viewHolder.a.animate().setInterpolator(s);
        d(viewHolder);
    }
}

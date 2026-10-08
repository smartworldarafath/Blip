package defpackage;

import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g2 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ AndroidTextContextMenuToolbarProvider k;
    public final /* synthetic */ TextContextMenuDataProvider l;

    public /* synthetic */ g2(AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider, TextContextMenuDataProvider textContextMenuDataProvider, int i) {
        this.j = i;
        this.k = androidTextContextMenuToolbarProvider;
        this.l = textContextMenuDataProvider;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Object obj = null;
        TextContextMenuDataProvider textContextMenuDataProvider = this.l;
        AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = this.k;
        int i2 = 2;
        switch (i) {
            case 0:
                f2 f2Var = androidTextContextMenuToolbarProvider.f;
                r1 r1Var = new r1(2, textContextMenuDataProvider);
                ?? obj2 = new Object();
                androidTextContextMenuToolbarProvider.e.e("dataBuilder", f2Var, new p0(i2, (Object) obj2, r1Var));
                Object obj3 = obj2.j;
                if (obj3 != null) {
                    return (TextContextMenuData) obj3;
                }
                Intrinsics.e("result");
                throw null;
            case 1:
                f2 f2Var2 = androidTextContextMenuToolbarProvider.g;
                g2 g2Var = new g2(androidTextContextMenuToolbarProvider, textContextMenuDataProvider, i2);
                ?? obj4 = new Object();
                androidTextContextMenuToolbarProvider.e.e("positioner", f2Var2, new p0(i2, (Object) obj4, g2Var));
                Object obj5 = obj4.j;
                if (obj5 != null) {
                    return (Rect) obj5;
                }
                Intrinsics.e("result");
                throw null;
            default:
                Object a = androidTextContextMenuToolbarProvider.c.a();
                if (((LayoutCoordinates) a).o()) {
                    obj = a;
                }
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                if (layoutCoordinates == null) {
                    return Rect.e;
                }
                return textContextMenuDataProvider.A0(layoutCoordinates).i(layoutCoordinates.S(0L));
        }
    }
}

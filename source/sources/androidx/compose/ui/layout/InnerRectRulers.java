package androidx.compose.ui.layout;

import androidx.compose.ui.layout.HorizontalRuler;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.layout.VerticalRuler;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class InnerRectRulers implements RectRulers {
    public final RectRulers[] a;
    public final VerticalRuler b;
    public final HorizontalRuler c;
    public final VerticalRuler d;
    public final HorizontalRuler e;

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.layout.Ruler, androidx.compose.ui.layout.VerticalRuler] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.compose.ui.layout.Ruler, androidx.compose.ui.layout.VerticalRuler] */
    /* JADX WARN: Type inference failed for: r6v11, types: [androidx.compose.ui.layout.Ruler, androidx.compose.ui.layout.HorizontalRuler] */
    /* JADX WARN: Type inference failed for: r6v5, types: [androidx.compose.ui.layout.Ruler, androidx.compose.ui.layout.HorizontalRuler] */
    public InnerRectRulers(RectRulers[] rectRulersArr) {
        this.a = rectRulersArr;
        int length = rectRulersArr.length;
        final VerticalRuler[] verticalRulerArr = new VerticalRuler[length];
        final int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            verticalRulerArr[i2] = this.a[i2].b();
        }
        final int i3 = 1;
        this.b = new Ruler(new Function2() { // from class: ji
            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                float a;
                int i4 = i3;
                VerticalRuler[] verticalRulerArr2 = verticalRulerArr;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                float floatValue = ((Float) obj2).floatValue();
                switch (i4) {
                    case 0:
                        a = RulerKt.a(placementScope, false, verticalRulerArr2, floatValue);
                        break;
                    default:
                        a = RulerKt.a(placementScope, true, verticalRulerArr2, floatValue);
                        break;
                }
                return Float.valueOf(a);
            }
        });
        int length2 = this.a.length;
        final HorizontalRuler[] horizontalRulerArr = new HorizontalRuler[length2];
        for (int i4 = 0; i4 < length2; i4++) {
            horizontalRulerArr[i4] = this.a[i4].c();
        }
        this.c = new Ruler(new Function2() { // from class: r9
            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                float a;
                int i5 = i3;
                HorizontalRuler[] horizontalRulerArr2 = horizontalRulerArr;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                float floatValue = ((Float) obj2).floatValue();
                switch (i5) {
                    case 0:
                        a = RulerKt.a(placementScope, false, horizontalRulerArr2, floatValue);
                        break;
                    default:
                        a = RulerKt.a(placementScope, true, horizontalRulerArr2, floatValue);
                        break;
                }
                return Float.valueOf(a);
            }
        });
        int length3 = this.a.length;
        final VerticalRuler[] verticalRulerArr2 = new VerticalRuler[length3];
        for (int i5 = 0; i5 < length3; i5++) {
            verticalRulerArr2[i5] = this.a[i5].d();
        }
        this.d = new Ruler(new Function2() { // from class: ji
            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                float a;
                int i42 = i;
                VerticalRuler[] verticalRulerArr22 = verticalRulerArr2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                float floatValue = ((Float) obj2).floatValue();
                switch (i42) {
                    case 0:
                        a = RulerKt.a(placementScope, false, verticalRulerArr22, floatValue);
                        break;
                    default:
                        a = RulerKt.a(placementScope, true, verticalRulerArr22, floatValue);
                        break;
                }
                return Float.valueOf(a);
            }
        });
        int length4 = this.a.length;
        final HorizontalRuler[] horizontalRulerArr2 = new HorizontalRuler[length4];
        for (int i6 = 0; i6 < length4; i6++) {
            horizontalRulerArr2[i6] = this.a[i6].a();
        }
        this.e = new Ruler(new Function2() { // from class: r9
            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                float a;
                int i52 = i;
                HorizontalRuler[] horizontalRulerArr22 = horizontalRulerArr2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                float floatValue = ((Float) obj2).floatValue();
                switch (i52) {
                    case 0:
                        a = RulerKt.a(placementScope, false, horizontalRulerArr22, floatValue);
                        break;
                    default:
                        a = RulerKt.a(placementScope, true, horizontalRulerArr22, floatValue);
                        break;
                }
                return Float.valueOf(a);
            }
        });
    }

    @Override // androidx.compose.ui.layout.RectRulers
    public final HorizontalRuler a() {
        return this.e;
    }

    @Override // androidx.compose.ui.layout.RectRulers
    public final VerticalRuler b() {
        return this.b;
    }

    @Override // androidx.compose.ui.layout.RectRulers
    public final HorizontalRuler c() {
        return this.c;
    }

    @Override // androidx.compose.ui.layout.RectRulers
    public final VerticalRuler d() {
        return this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "innermostOf(");
        int i = 0;
        for (RectRulers rectRulers : this.a) {
            i++;
            if (i > 1) {
                sb.append((CharSequence) ", ");
            }
            StringsKt.h(sb, rectRulers, null);
        }
        sb.append((CharSequence) ")");
        return sb.toString();
    }
}

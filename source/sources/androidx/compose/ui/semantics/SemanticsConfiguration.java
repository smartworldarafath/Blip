package androidx.compose.ui.semantics;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.ui.platform.JvmActuals_jvmKt;
import defpackage.jb;
import java.util.Iterator;
import java.util.Map;
import kotlin.Function;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SemanticsConfiguration implements SemanticsPropertyReceiver, Iterable<Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object>>, KMappedMarker {
    public final MutableScatterMap j;
    public Map k;
    public boolean l;
    public boolean m;

    public SemanticsConfiguration() {
        long[] jArr = ScatterMapKt.a;
        this.j = new MutableScatterMap();
    }

    @Override // androidx.compose.ui.semantics.SemanticsPropertyReceiver
    public final void b(SemanticsPropertyKey semanticsPropertyKey, Object obj) {
        boolean z = obj instanceof AccessibilityAction;
        MutableScatterMap mutableScatterMap = this.j;
        if (z && mutableScatterMap.c(semanticsPropertyKey)) {
            Object e = mutableScatterMap.e(semanticsPropertyKey);
            e.getClass();
            AccessibilityAction accessibilityAction = (AccessibilityAction) e;
            AccessibilityAction accessibilityAction2 = (AccessibilityAction) obj;
            String str = accessibilityAction2.a;
            if (str == null) {
                str = accessibilityAction.a;
            }
            Function function = accessibilityAction2.b;
            if (function == null) {
                function = accessibilityAction.b;
            }
            mutableScatterMap.o(semanticsPropertyKey, new AccessibilityAction(str, function));
        } else {
            mutableScatterMap.o(semanticsPropertyKey, obj);
        }
        semanticsPropertyKey.getClass();
    }

    public final Object c(SemanticsPropertyKey semanticsPropertyKey) {
        Object e = this.j.e(semanticsPropertyKey);
        if (e != null) {
            return e;
        }
        throw new IllegalStateException("Key not present: " + semanticsPropertyKey + " - consider getOrElse or getOrNull");
    }

    public final void d(SemanticsConfiguration semanticsConfiguration) {
        MutableScatterMap mutableScatterMap = semanticsConfiguration.j;
        Object[] objArr = mutableScatterMap.b;
        Object[] objArr2 = mutableScatterMap.c;
        long[] jArr = mutableScatterMap.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            Object obj = objArr[i4];
                            Object obj2 = objArr2[i4];
                            SemanticsPropertyKey semanticsPropertyKey = (SemanticsPropertyKey) obj;
                            MutableScatterMap mutableScatterMap2 = this.j;
                            Object e = mutableScatterMap2.e(semanticsPropertyKey);
                            semanticsPropertyKey.getClass();
                            Object n = semanticsPropertyKey.b.n(e, obj2);
                            if (n != null) {
                                mutableScatterMap2.o(semanticsPropertyKey, n);
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        return;
                    }
                }
                if (i != length) {
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SemanticsConfiguration) {
                SemanticsConfiguration semanticsConfiguration = (SemanticsConfiguration) obj;
                if (!Intrinsics.a(this.j, semanticsConfiguration.j) || this.l != semanticsConfiguration.l || this.m != semanticsConfiguration.m) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.m) + jb.b(this.j.hashCode() * 31, 31, this.l);
    }

    @Override // java.lang.Iterable
    public final Iterator<Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object>> iterator() {
        Map map = this.k;
        if (map == null) {
            map = this.j.a();
            this.k = map;
        }
        return map.entrySet().iterator();
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        if (this.l) {
            sb.append("mergeDescendants=true");
            str = ", ";
        } else {
            str = "";
        }
        if (this.m) {
            sb.append(str);
            sb.append("isClearingSemantics=true");
            str = ", ";
        }
        MutableScatterMap mutableScatterMap = this.j;
        Object[] objArr = mutableScatterMap.b;
        Object[] objArr2 = mutableScatterMap.c;
        long[] jArr = mutableScatterMap.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            Object obj = objArr[i4];
                            Object obj2 = objArr2[i4];
                            sb.append(str);
                            sb.append(((SemanticsPropertyKey) obj).a);
                            sb.append(" : ");
                            sb.append(obj2);
                            str = ", ";
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    }
                }
                if (i == length) {
                    break;
                }
                i++;
            }
        }
        return JvmActuals_jvmKt.a(this) + "{ " + ((Object) sb) + " }";
    }
}

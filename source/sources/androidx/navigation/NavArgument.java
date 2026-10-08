package androidx.navigation;

import defpackage.fe;
import defpackage.q;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavArgument {
    public final NavType a;
    public final boolean b;
    public final Object c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
    }

    public NavArgument(NavType navType, Boolean bool, boolean z) {
        if (z && bool == null) {
            fe.l(q.i("Argument with type ", navType.b(), " has null value but is not nullable."));
            throw null;
        }
        this.a = navType;
        this.c = bool;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && NavArgument.class == obj.getClass()) {
                NavArgument navArgument = (NavArgument) obj;
                if (this.b == navArgument.b && this.a.equals(navArgument.a)) {
                    Object obj2 = navArgument.c;
                    Object obj3 = this.c;
                    if (obj3 != null) {
                        return obj3.equals(obj2);
                    }
                    if (obj2 == null) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int hashCode = ((this.a.hashCode() * 961) + (this.b ? 1 : 0)) * 31;
        Object obj = this.c;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Reflection.a(NavArgument.class).c());
        sb.append(" Type: " + this.a);
        sb.append(" Nullable: false");
        if (this.b) {
            sb.append(" DefaultValue: " + this.c);
        }
        return sb.toString();
    }
}

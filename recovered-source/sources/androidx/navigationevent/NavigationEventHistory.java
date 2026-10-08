package androidx.navigationevent;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavigationEventHistory {
    public final NavigationEventInfo a;
    public final List b;
    public final List c;
    public final int d;
    public ListBuilder e;

    public NavigationEventHistory(NavigationEventInfo navigationEventInfo, List list, List list2, int i) {
        this.a = navigationEventInfo;
        this.b = list;
        this.c = list2;
        this.d = i;
    }

    public final List a() {
        if (this.e == null) {
            ListBuilder o = CollectionsKt.o();
            o.addAll(this.b);
            NavigationEventInfo navigationEventInfo = this.a;
            if (navigationEventInfo != null) {
                o.add(navigationEventInfo);
            }
            o.addAll(this.c);
            this.e = CollectionsKt.l(o);
        }
        ListBuilder listBuilder = this.e;
        listBuilder.getClass();
        return listBuilder;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && NavigationEventHistory.class == obj.getClass()) {
                NavigationEventHistory navigationEventHistory = (NavigationEventHistory) obj;
                if (this.d == navigationEventHistory.d && a().equals(navigationEventHistory.a())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return a().hashCode() + (this.d * 31);
    }

    public final String toString() {
        return "NavigationEventHistory(currentIndex=" + this.d + ", mergedHistory=" + a() + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public NavigationEventHistory() {
        this(null, r1, r1, -1);
        EmptyList emptyList = EmptyList.j;
    }
}

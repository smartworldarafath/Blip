package net.blip.libblip;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.blip.libblip.frontend.Search;
import net.blip.libblip.frontend.Users;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PeerPickerContent {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Overview extends PeerPickerContent {
        public final List a;
        public final List b;
        public final boolean c;

        public Overview(List list, List list2) {
            boolean z;
            this.a = list;
            this.b = list2;
            if (list.isEmpty() && list2.isEmpty()) {
                z = true;
            } else {
                z = false;
            }
            this.c = z;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SearchResults extends PeerPickerContent {
        public final ArrayList a;
        public final ArrayList b;
        public final Search.Status c;
        public final boolean d;

        public SearchResults(Search search, Users users) {
            boolean z;
            users.getClass();
            List list = search.o;
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Peer a = Users_DerivedKt.a(users, (PeerId) it.next());
                if (a != null) {
                    arrayList.add(a);
                }
            }
            List list2 = search.p;
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                Peer a2 = Users_DerivedKt.a(users, (PeerId) it2.next());
                if (a2 != null) {
                    arrayList2.add(a2);
                }
            }
            Search.Status status = search.n;
            status.getClass();
            this.a = arrayList;
            this.b = arrayList2;
            this.c = status;
            if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                z = true;
            } else {
                z = false;
            }
            this.d = z;
        }
    }
}

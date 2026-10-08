package defpackage;

import java.time.Instant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;
import net.blip.libblip.Device_DerivedKt;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerId;
import net.blip.libblip.PeerId_DerivedKt;
import net.blip.libblip.PeerPickerContent;
import net.blip.libblip.PeerPickerViewModel;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.User;
import net.blip.libblip.Users_DerivedKt$recentContacts$$inlined$compareByDescending$1;
import net.blip.libblip.Users_DerivedKt$recentContacts$$inlined$thenBy$1;
import net.blip.libblip.frontend.PeerInteraction;
import net.blip.libblip.frontend.Search;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Users;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e9 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ PeerPickerViewModel k;

    public /* synthetic */ e9(PeerPickerViewModel peerPickerViewModel, int i) {
        this.j = i;
        this.k = peerPickerViewModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Object overview;
        List list;
        Instant instant;
        int i = this.j;
        Unit unit = Unit.a;
        PeerPickerViewModel peerPickerViewModel = this.k;
        switch (i) {
            case 0:
                String str = (String) obj;
                str.getClass();
                peerPickerViewModel.c(str);
                return unit;
            case 1:
                State state = (State) obj;
                state.getClass();
                Search search = (Search) state.D.get(peerPickerViewModel.b);
                if (search != null && !StringsKt.t(search.m)) {
                    Users users = state.u;
                    if (users != null) {
                        overview = new PeerPickerContent.SearchResults(search, users);
                    } else {
                        LoggerKt.a.getClass();
                        Logger.j("state.users is null", new Pair[0]);
                        throw null;
                    }
                } else {
                    User b = State_DerivedKt.b(state);
                    if (b != null) {
                        list = Device_DerivedKt.c(b.m, CollectionsKt.R(Device_DerivedKt.d(b.x.values()), ComparisonsKt.a(new a7(4), new a7(5))));
                    } else {
                        list = EmptyList.j;
                    }
                    Users d = State_DerivedKt.d(state);
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (PeerInteraction peerInteraction : CollectionsKt.N(d.o)) {
                        PeerId peerId = peerInteraction.n;
                        if (peerId != null && (instant = peerInteraction.m) != null && PeerId_DerivedKt.c(peerId)) {
                            linkedHashMap.putIfAbsent(peerId.m, instant);
                        }
                    }
                    Set keySet = d.n.keySet();
                    ArrayList arrayList = new ArrayList();
                    Iterator it = keySet.iterator();
                    while (it.hasNext()) {
                        User user = (User) d.m.get((String) it.next());
                        if (user != null) {
                            arrayList.add(user);
                        }
                    }
                    List R = CollectionsKt.R(arrayList, new c5(0, new Users_DerivedKt$recentContacts$$inlined$thenBy$1(new Users_DerivedKt$recentContacts$$inlined$compareByDescending$1(linkedHashMap))));
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.m(R, 10));
                    Iterator it2 = R.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(new Peer.User((User) it2.next()));
                    }
                    overview = new PeerPickerContent.Overview(list, arrayList2);
                }
                return overview;
            default:
                String str2 = (String) obj;
                str2.getClass();
                peerPickerViewModel.c(str2);
                return unit;
        }
    }
}

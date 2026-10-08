package net.blip.libblip;

import defpackage.e9;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import net.blip.libblip.event.AddBlockedUser;
import net.blip.libblip.event.RemoveContact;
import net.blip.libblip.event.RemoveDevice;
import net.blip.libblip.event.Search;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PeerPickerViewModel {
    public final Core a;
    public final String b;
    public final DerivedStateFlow c;
    public final MutableStateFlow d;
    public final StateFlow e;

    public PeerPickerViewModel(Core core, String str) {
        core.getClass();
        this.a = core;
        this.b = str;
        this.c = DerivedStateFlowKt.a(core.a, new e9(this, 1));
        MutableStateFlow a = StateFlowKt.a("");
        this.d = a;
        this.e = FlowKt.b(a);
    }

    public final void a(String str) {
        str.getClass();
        this.a.b.b(new AddBlockedUser(str));
    }

    public final void b(PeerId peerId) {
        peerId.getClass();
        boolean c = PeerId_DerivedKt.c(peerId);
        Core core = this.a;
        if (c) {
            core.b.b(new RemoveContact(peerId.m));
        } else {
            core.b.b(new RemoveDevice(peerId.n));
        }
    }

    public final void c(String str) {
        str.getClass();
        this.d.setValue(str);
        this.a.b.b(new Search(this.b, str));
    }
}

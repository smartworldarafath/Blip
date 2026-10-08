package net.blip.libblip;

import defpackage.oh;
import defpackage.qg;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferChoosePeerViewModel {
    public final Core a;
    public final String b;
    public final DerivedStateFlow c;
    public final DerivedStateFlow d;

    public TransferChoosePeerViewModel(Core core, String str) {
        core.getClass();
        str.getClass();
        this.a = core;
        this.b = str;
        DerivedStateFlow a = DerivedStateFlowKt.a(core.a, new oh(this, 0));
        this.c = a;
        this.d = DerivedStateFlowKt.a(a, new qg(12));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransferChoosePeerViewModel)) {
            return false;
        }
        TransferChoosePeerViewModel transferChoosePeerViewModel = (TransferChoosePeerViewModel) obj;
        if (Intrinsics.a(this.a, transferChoosePeerViewModel.a) && Intrinsics.a(this.b, transferChoosePeerViewModel.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "TransferChoosePeerViewModel(core=" + this.a + ", transferId=" + this.b + ")";
    }
}

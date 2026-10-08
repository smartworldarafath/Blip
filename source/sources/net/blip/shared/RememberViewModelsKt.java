package net.blip.shared;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import defpackage.kb;
import java.util.UUID;
import kotlin.jvm.functions.Function0;
import net.blip.libblip.Core;
import net.blip.libblip.PeerPickerViewModel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RememberViewModelsKt {
    public static final PeerPickerViewModel a(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Core core = (Core) gapComposer.j(ProvideSharedCompositionLocalsKt.d);
        gapComposer.W(439801325);
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (K == composer$Companion$Empty$1) {
            String uuid = UUID.randomUUID().toString();
            uuid.getClass();
            K = new PeerPickerViewModel(core, uuid);
            gapComposer.g0(K);
        }
        PeerPickerViewModel peerPickerViewModel = (PeerPickerViewModel) K;
        boolean h = gapComposer.h(peerPickerViewModel);
        Object K2 = gapComposer.K();
        if (h || K2 == composer$Companion$Empty$1) {
            K2 = new kb(7, peerPickerViewModel);
            gapComposer.g0(K2);
        }
        OnDisposeKt.a(null, (Function0) K2, gapComposer, 0);
        gapComposer.p(false);
        return peerPickerViewModel;
    }
}

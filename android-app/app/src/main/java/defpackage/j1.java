package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.dialogs.RemovePeerConfirmationDialogKt;
import net.blip.android.ui.peerpicker.AndroidPeerPickerListItemsKt;
import net.blip.libblip.Peer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class j1 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Peer k;
    public final /* synthetic */ Function0 l;
    public final /* synthetic */ Function0 m;
    public final /* synthetic */ int n;

    public /* synthetic */ j1(Peer peer, Function0 function0, Function0 function02, int i, int i2) {
        this.j = i2;
        this.k = peer;
        this.l = function0;
        this.m = function02;
        this.n = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.n;
        Function0 function0 = this.m;
        Function0 function02 = this.l;
        Peer peer = this.k;
        Composer composer = (Composer) obj;
        ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                AndroidPeerPickerListItemsKt.a(peer, function02, function0, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            default:
                RemovePeerConfirmationDialogKt.a(peer, function02, function0, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
        }
    }
}

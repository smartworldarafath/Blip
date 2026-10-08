package defpackage;

import android.content.Context;
import android.widget.Toast;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupLayout;
import androidx.compose.ui.window.PopupProperties;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavHostController;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.blip.android.shortcuts.ShortcutsManagerKt;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerId;
import net.blip.libblip.PeerId_DerivedKt;
import net.blip.libblip.User;
import net.blip.libblip.event.RemoveContact;
import net.blip.libblip.event.RemoveDevice;
import net.blip.libblip.event.TransferCancellationRequested;
import net.blip.libblip.event.TransferDeclineRequested;
import net.blip.libblip.frontend.Transfer;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class q1 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ q1(Transfer transfer, Function1 function1, String str, MutableState mutableState, Context context) {
        this.j = 3;
        this.l = transfer;
        this.m = function1;
        this.n = str;
        this.o = mutableState;
        this.k = context;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        Object obj = this.k;
        Object obj2 = this.o;
        Object obj3 = this.n;
        Object obj4 = this.m;
        Object obj5 = this.l;
        switch (i) {
            case 0:
                ((MutableState) obj2).setValue(Boolean.FALSE);
                ShortcutsManagerKt.b((Context) obj, ((Peer) obj5).c());
                ((Function1) obj4).b(((User) obj3).m);
                return unit;
            case 1:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidPopup_androidKt.a;
                ((PopupLayout) obj).o((Function0) obj5, (PopupProperties) obj4, (String) obj3, (LayoutDirection) obj2);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                PeerId peerId = (PeerId) obj5;
                Function1 function1 = (Function1) obj4;
                NavHostController navHostController = (NavHostController) obj3;
                ((MutableState) obj2).setValue(Boolean.FALSE);
                ShortcutsManagerKt.b((Context) obj, peerId);
                if (PeerId_DerivedKt.c(peerId)) {
                    function1.b(new RemoveContact(peerId.m));
                } else {
                    function1.b(new RemoveDevice(peerId.n));
                }
                navHostController.c();
                return unit;
            default:
                Function1 function12 = (Function1) obj4;
                String str = (String) obj3;
                MutableState mutableState = (MutableState) obj2;
                Context context = (Context) obj;
                if (((Transfer) obj5).w == Transfer.Status.p) {
                    function12.b(new TransferDeclineRequested(str, ByteString.m));
                } else {
                    function12.b(new TransferCancellationRequested(str));
                }
                mutableState.setValue(null);
                Toast.makeText(context, "Transfer cancelled", 0).show();
                return unit;
        }
    }

    public /* synthetic */ q1(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
        this.m = obj3;
        this.n = obj4;
        this.o = obj5;
    }
}

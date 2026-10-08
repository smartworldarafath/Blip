package defpackage;

import androidx.compose.foundation.text.KeyboardActionScope;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;
import net.blip.libblip.event.TransferSetAutoAccept;
import net.blip.libblip.event.UpdateUser;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class lc implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Function1 k;
    public final /* synthetic */ MutableState l;

    public /* synthetic */ lc(MutableState mutableState, Function1 function1) {
        this.j = 3;
        this.l = mutableState;
        this.k = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Unit unit = Unit.a;
        MutableState mutableState = this.l;
        Function1 function1 = this.k;
        switch (i) {
            case 0:
                ((KeyboardActionScope) obj).getClass();
                if (!StringsKt.t(((TextFieldValue) mutableState.getValue()).a.k)) {
                    function1.b(((TextFieldValue) mutableState.getValue()).a.k);
                }
                return unit;
            case 1:
                FocusState focusState = (FocusState) obj;
                focusState.getClass();
                mutableState.setValue(Boolean.valueOf(((FocusStateImpl) focusState).b()));
                Boolean bool = (Boolean) mutableState.getValue();
                bool.getClass();
                function1.b(bool);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                String str = (String) obj;
                str.getClass();
                function1.b(new UpdateUser(str, (Boolean) null, 6));
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ((Boolean) obj).getClass();
                boolean z = !((Boolean) mutableState.getValue()).booleanValue();
                mutableState.setValue(Boolean.valueOf(z));
                function1.b(new UpdateUser((String) null, Boolean.valueOf(z), 5));
                return unit;
            default:
                function1.b(new TransferSetAutoAccept(((Boolean) obj).booleanValue(), ByteString.m));
                mutableState.setValue(Boolean.FALSE);
                return unit;
        }
    }

    public /* synthetic */ lc(int i, MutableState mutableState, Function1 function1) {
        this.j = i;
        this.k = function1;
        this.l = mutableState;
    }
}

package defpackage;

import android.os.Bundle;
import androidx.compose.foundation.GestureConnection;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.input.pointer.HoverIconModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class o0 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Ref$ObjectRef k;

    public /* synthetic */ o0(Ref$ObjectRef ref$ObjectRef, int i) {
        this.j = i;
        this.k = ref$ObjectRef;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        boolean z = true;
        Ref$ObjectRef ref$ObjectRef = this.k;
        switch (i) {
            case 0:
                Class cls = AndroidComposeView.R0;
                ref$ObjectRef.j = (FocusTargetNode) obj;
                return Boolean.TRUE;
            case 1:
                GestureConnection gestureConnection = (GestureConnection) obj;
                if (Intrinsics.a(gestureConnection.T(), "waiting")) {
                    ref$ObjectRef.j = gestureConnection;
                    z = false;
                }
                return Boolean.valueOf(z);
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                HoverIconModifierNode hoverIconModifierNode = (HoverIconModifierNode) obj;
                Object obj2 = ref$ObjectRef.j;
                if (obj2 == null && hoverIconModifierNode.z) {
                    ref$ObjectRef.j = hoverIconModifierNode;
                } else if (obj2 != null) {
                    hoverIconModifierNode.getClass();
                }
                return Boolean.TRUE;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                String str = (String) obj;
                str.getClass();
                Object obj3 = ref$ObjectRef.j;
                if (obj3 != null && ((Bundle) obj3).containsKey(str)) {
                    z = false;
                }
                return Boolean.valueOf(z);
            default:
                Object obj4 = (TraversableNode) obj;
                if (((Modifier.Node) obj4).j.w) {
                    ref$ObjectRef.j = obj4;
                    z = false;
                }
                return Boolean.valueOf(z);
        }
    }
}

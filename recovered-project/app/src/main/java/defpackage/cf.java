package defpackage;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.autofill.ContentDataType;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.autofill.FillableData;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsSortKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.d;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.ThreadContextElement;
import net.blip.android.ui.settings.SettingsComposablesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class cf implements Function2 {
    public final /* synthetic */ int j;

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i;
        int i2 = this.j;
        boolean z = false;
        Unit unit = Unit.a;
        Integer num = null;
        switch (i2) {
            case 0:
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.a;
                throw new IllegalStateException("merge function called on unmergeable property IsPopup. A popup should not be a child of a clickable/focusable node.");
            case 1:
                SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.a;
                throw new IllegalStateException("merge function called on unmergeable property IsDialog. A dialog should not be a child of a clickable/focusable node.");
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Role role = (Role) obj;
                SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.a;
                return role;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                String str = (String) obj;
                SemanticsPropertyKey semanticsPropertyKey4 = SemanticsProperties.a;
                return str;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Unit unit2 = (Unit) obj;
                SemanticsPropertyKey semanticsPropertyKey5 = SemanticsProperties.a;
                return unit2;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                List list = (List) obj;
                List list2 = (List) obj2;
                SemanticsPropertyKey semanticsPropertyKey6 = SemanticsProperties.a;
                if (list != null) {
                    ArrayList arrayList = new ArrayList(list);
                    arrayList.addAll(list2);
                    return arrayList;
                }
                return list2;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Shape shape = (Shape) obj;
                SemanticsPropertyKey semanticsPropertyKey7 = SemanticsProperties.a;
                return shape;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                SemanticsPropertyKey semanticsPropertyKey8 = SemanticsProperties.a;
                throw new IllegalStateException("merge function called on unmergeable property PaneTitle.");
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ContentType contentType = (ContentType) obj;
                SemanticsPropertyKey semanticsPropertyKey9 = SemanticsProperties.a;
                return contentType;
            case KeyModifiers.a /* 9 */:
                ContentDataType contentDataType = (ContentDataType) obj;
                SemanticsPropertyKey semanticsPropertyKey10 = SemanticsProperties.a;
                return contentDataType;
            case KeyModifiers.b /* 10 */:
                FillableData fillableData = (FillableData) obj;
                SemanticsPropertyKey semanticsPropertyKey11 = SemanticsProperties.a;
                return fillableData;
            case 11:
                Boolean bool = (Boolean) obj;
                ((Boolean) obj2).booleanValue();
                return bool;
            case KeyModifiers.c /* 12 */:
                return (String) obj;
            case 13:
                if (obj != null || obj2 != null) {
                    d.i();
                }
                return null;
            case 14:
                if (obj == null) {
                    return obj2;
                }
                return obj;
            case 15:
                SemanticsNode semanticsNode = (SemanticsNode) obj2;
                Comparator[] comparatorArr = SemanticsSortKt.a;
                Object valueOf = Float.valueOf(0.0f);
                SemanticsConfiguration semanticsConfiguration = ((SemanticsNode) obj).d;
                SemanticsPropertyKey semanticsPropertyKey12 = SemanticsProperties.u;
                Object e = semanticsConfiguration.j.e(semanticsPropertyKey12);
                if (e == null) {
                    e = valueOf;
                }
                float floatValue = ((Number) e).floatValue();
                Object e2 = semanticsNode.d.j.e(semanticsPropertyKey12);
                if (e2 != null) {
                    valueOf = e2;
                }
                return Integer.valueOf(Float.compare(floatValue, ((Number) valueOf).floatValue()));
            case 16:
                ((Integer) obj2).getClass();
                SettingsComposablesKt.a(RecomposeScopeImplKt.a(1), (Composer) obj);
                return unit;
            case 17:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.N(intValue & 1, z)) {
                    gapComposer.Q();
                    return unit;
                }
                throw null;
            case 18:
                return Integer.valueOf(((IntrinsicMeasurable) obj).p(((Integer) obj2).intValue()));
            case 19:
                return Integer.valueOf(((IntrinsicMeasurable) obj).V(((Integer) obj2).intValue()));
            case 20:
                return Integer.valueOf(((IntrinsicMeasurable) obj).b(((Integer) obj2).intValue()));
            case 21:
                return Integer.valueOf(((IntrinsicMeasurable) obj).m(((Integer) obj2).intValue()));
            case 22:
                TextFieldScrollerPosition textFieldScrollerPosition = (TextFieldScrollerPosition) obj2;
                SaverKt$Saver$1 saverKt$Saver$1 = TextFieldScrollerPosition.g;
                Float valueOf2 = Float.valueOf(textFieldScrollerPosition.a());
                if (((Orientation) ((SnapshotMutableStateImpl) textFieldScrollerPosition.f).getValue()) == Orientation.j) {
                    z = true;
                }
                return CollectionsKt.C(valueOf2, Boolean.valueOf(z));
            case 23:
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                if (element instanceof ThreadContextElement) {
                    if (obj instanceof Integer) {
                        num = (Integer) obj;
                    }
                    if (num != null) {
                        i = num.intValue();
                    } else {
                        i = 1;
                    }
                    if (i == 0) {
                        return element;
                    }
                    return Integer.valueOf(i + 1);
                }
                return obj;
            case 24:
                ThreadContextElement threadContextElement = (ThreadContextElement) obj;
                CoroutineContext.Element element2 = (CoroutineContext.Element) obj2;
                if (threadContextElement != null) {
                    return threadContextElement;
                }
                if (!(element2 instanceof ThreadContextElement)) {
                    return null;
                }
                return (ThreadContextElement) element2;
            default:
                ComposeUiNode.Companion.f.b(obj);
                return unit;
        }
    }

    public /* synthetic */ cf(int i, byte b) {
        this.j = i;
    }
}

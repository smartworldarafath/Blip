package defpackage;

import android.os.Bundle;
import androidx.activity.compose.ActivityResultLauncherHolder;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistry$register$3;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.CursorAnimationState;
import androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNode;
import androidx.compose.foundation.text.input.internal.LegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupLayout;
import androidx.compose.ui.window.PopupProperties;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.internal.NavControllerImpl;
import defpackage.u2;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$IntRef;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class o implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ o(PopupLayout popupLayout, Function0 function0, PopupProperties popupProperties, String str, LayoutDirection layoutDirection) {
        this.j = 2;
        this.k = popupLayout;
        this.l = function0;
        this.n = popupProperties;
        this.m = str;
        this.o = layoutDirection;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        LegacyTextFieldState legacyTextFieldState;
        TextFieldSelectionManager textFieldSelectionManager;
        List list;
        Rect rect;
        float f;
        float rint;
        int i = this.j;
        Unit unit = Unit.a;
        Object obj2 = this.o;
        Object obj3 = this.n;
        Object obj4 = this.m;
        Object obj5 = this.l;
        Object obj6 = this.k;
        switch (i) {
            case 0:
                final ActivityResultLauncherHolder activityResultLauncherHolder = (ActivityResultLauncherHolder) obj6;
                activityResultLauncherHolder.a = ((ActivityResultRegistry) obj5).d((String) obj4, (ActivityResultContract) obj3, new p(0, (MutableState) obj2));
                return new DisposableEffectResult() { // from class: androidx.activity.compose.ActivityResultRegistryKt$rememberLauncherForActivityResult$lambda$4$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        ActivityResultRegistry$register$3 activityResultRegistry$register$3 = ActivityResultLauncherHolder.this.a;
                        if (activityResultRegistry$register$3 != null) {
                            activityResultRegistry$register$3.b();
                        } else {
                            u2.l("Launcher has not been initialized");
                        }
                    }
                };
            case 1:
                LegacyTextInputMethodRequest legacyTextInputMethodRequest = (LegacyTextInputMethodRequest) obj;
                LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode legacyPlatformTextInputNode = ((AndroidLegacyPlatformTextInputServiceAdapter) obj5).a;
                legacyTextInputMethodRequest.h = (TextFieldValue) obj6;
                legacyTextInputMethodRequest.i = (ImeOptions) obj4;
                legacyTextInputMethodRequest.c = (p2) obj3;
                legacyTextInputMethodRequest.d = (Function1) obj2;
                ViewConfiguration viewConfiguration = null;
                if (legacyPlatformTextInputNode != null) {
                    legacyTextFieldState = ((LegacyAdaptingPlatformTextInputModifierNode) legacyPlatformTextInputNode).y;
                } else {
                    legacyTextFieldState = null;
                }
                legacyTextInputMethodRequest.e = legacyTextFieldState;
                if (legacyPlatformTextInputNode != null) {
                    textFieldSelectionManager = ((LegacyAdaptingPlatformTextInputModifierNode) legacyPlatformTextInputNode).z;
                } else {
                    textFieldSelectionManager = null;
                }
                legacyTextInputMethodRequest.f = textFieldSelectionManager;
                if (legacyPlatformTextInputNode != null) {
                    viewConfiguration = (ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a((LegacyAdaptingPlatformTextInputModifierNode) legacyPlatformTextInputNode, CompositionLocalsKt.t);
                }
                legacyTextInputMethodRequest.g = viewConfiguration;
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                final PopupLayout popupLayout = (PopupLayout) obj6;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidPopup_androidKt.a;
                popupLayout.z.addView(popupLayout, popupLayout.A);
                popupLayout.o((Function0) obj5, (PopupProperties) obj3, (String) obj4, (LayoutDirection) obj2);
                return new DisposableEffectResult() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$lambda$3$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        PopupLayout popupLayout2 = PopupLayout.this;
                        popupLayout2.e();
                        popupLayout2.setTag(R.id.view_tree_lifecycle_owner, null);
                        popupLayout2.z.removeViewImmediate(popupLayout2);
                    }
                };
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ArrayList arrayList = (ArrayList) obj5;
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj4;
                NavControllerImpl navControllerImpl = (NavControllerImpl) obj3;
                Bundle bundle = (Bundle) obj2;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                navBackStackEntry.getClass();
                ((Ref$BooleanRef) obj6).j = true;
                int indexOf = arrayList.indexOf(navBackStackEntry);
                if (indexOf != -1) {
                    int i2 = indexOf + 1;
                    list = arrayList.subList(ref$IntRef.j, i2);
                    ref$IntRef.j = i2;
                } else {
                    list = EmptyList.j;
                }
                navControllerImpl.a(navBackStackEntry.k, bundle, navBackStackEntry, list);
                return unit;
            default:
                OffsetMapping offsetMapping = (OffsetMapping) obj5;
                TextFieldValue textFieldValue = (TextFieldValue) obj4;
                LegacyTextFieldState legacyTextFieldState2 = (LegacyTextFieldState) obj3;
                SolidColor solidColor = (SolidColor) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) ((ContentDrawScope) obj);
                layoutNodeDrawScope.a();
                float j = ((SnapshotMutableFloatStateImpl) ((CursorAnimationState) obj6).c).j();
                if (j != 0.0f) {
                    long j2 = textFieldValue.b;
                    int i3 = TextRange.c;
                    int b = offsetMapping.b((int) (j2 >> 32));
                    TextLayoutResultProxy d = legacyTextFieldState2.d();
                    if (d != null) {
                        rect = d.a.c(b);
                    } else {
                        rect = new Rect(0.0f, 0.0f, 0.0f, 0.0f);
                    }
                    float floor = (float) Math.floor(layoutNodeDrawScope.i0(2.0f));
                    if (floor < 1.0f) {
                        f = 1.0f;
                    } else {
                        f = floor;
                    }
                    float f2 = f / 2.0f;
                    float f3 = rect.a + f2;
                    float intBitsToFloat = Float.intBitsToFloat((int) (layoutNodeDrawScope.j.i() >> 32)) - f2;
                    if (f3 > intBitsToFloat) {
                        f3 = intBitsToFloat;
                    }
                    if (f3 >= f2) {
                        f2 = f3;
                    }
                    if (((int) f) % 2 == 1) {
                        rint = ((float) Math.floor(f2)) + 0.5f;
                    } else {
                        rint = (float) Math.rint(f2);
                    }
                    float f4 = rect.b;
                    long floatToRawIntBits = (Float.floatToRawIntBits(f4) & 4294967295L) | (Float.floatToRawIntBits(rint) << 32);
                    float f5 = rect.d;
                    DrawScope.d0(layoutNodeDrawScope, solidColor, floatToRawIntBits, (Float.floatToRawIntBits(rint) << 32) | (Float.floatToRawIntBits(f5) & 4294967295L), f, j, 432);
                }
                return unit;
        }
    }

    public /* synthetic */ o(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
        this.m = obj3;
        this.n = obj4;
        this.o = obj5;
    }
}

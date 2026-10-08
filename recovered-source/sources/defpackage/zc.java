package defpackage;

import android.R;
import android.app.RemoteAction;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.textclassifier.TextClassification;
import androidx.collection.MutableObjectList;
import androidx.compose.foundation.pager.PagerScrollScopeKt$LazyLayoutScrollScope$1;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.foundation.pager.PagerStateKt$UnitDensity$1;
import androidx.compose.foundation.text.TextContextMenuItems;
import androidx.compose.foundation.text.contextmenu.ProcessText_androidKt;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuKeys;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors_androidKt;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.foundation.text.selection.TextClassificationResult;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material.FabPlacement;
import androidx.compose.material.ScaffoldKt;
import androidx.compose.material.ScaffoldKt$ScaffoldLayout$contentPadding$1$1;
import androidx.compose.material.ScaffoldState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import com.google.accompanist.permissions.MutablePermissionState;
import com.google.accompanist.permissions.PermissionsUtilKt;
import defpackage.ec;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.sync.MutexImpl;
import net.blip.android.ui.home.PeerTrayCellsKt;
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.transfer.TransferCreationScreenKt;
import net.blip.shared.Paintable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class zc implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ zc(MutableState mutableState, Paintable paintable) {
        this.j = 2;
        this.k = mutableState;
        this.l = paintable;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        String str;
        TextRange textRange;
        int i = this.j;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        Unit unit = Unit.a;
        Object obj3 = this.l;
        Object obj4 = this.k;
        switch (i) {
            case 0:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj4;
                float floatValue = ((Float) obj).floatValue();
                ((Float) obj2).getClass();
                PagerStateKt$UnitDensity$1 pagerStateKt$UnitDensity$1 = PagerStateKt.a;
                ref$FloatRef.j += ((PagerScrollScopeKt$LazyLayoutScrollScope$1) obj3).a.f(floatValue - ref$FloatRef.j);
                return unit;
            case 1:
                String str2 = (String) obj4;
                String str3 = (String) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z2 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z2)) {
                    ListRowKt.c(null, str2, str3, 0L, gapComposer, 0, 9);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                MutableState mutableState = (MutableState) obj4;
                Paintable paintable = (Paintable) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z5 = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z5)) {
                    PeerTrayCellsKt.a(null, ((Boolean) mutableState.getValue()).booleanValue(), false, ComposableLambdaKt.b(1841160389, new d(paintable), gapComposer2), gapComposer2, 3072, 5);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ((Integer) obj2).getClass();
                PermissionsUtilKt.a((MutablePermissionState) obj4, (Lifecycle.Event) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                Object obj5 = (ScaffoldKt$ScaffoldLayout$contentPadding$1$1) obj3;
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ScaffoldKt.a;
                if ((intValue3 & 3) != 2) {
                    z4 = true;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z4)) {
                    composableLambdaImpl.f(obj5, gapComposer3, 6);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Function3 function3 = (Function3) obj4;
                ScaffoldState scaffoldState = (ScaffoldState) obj3;
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ScaffoldKt.a;
                if ((intValue4 & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.N(1 & intValue4, z)) {
                    function3.f(scaffoldState.a, gapComposer4, 0);
                } else {
                    gapComposer4.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                FabPlacement fabPlacement = (FabPlacement) obj4;
                ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) obj3;
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = ScaffoldKt.a;
                if ((intValue5 & 3) != 2) {
                    z3 = true;
                }
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.N(intValue5 & 1, z3)) {
                    CompositionLocalKt.a(ScaffoldKt.a.b(fabPlacement), composableLambdaImpl2, gapComposer5, 8);
                } else {
                    gapComposer5.Q();
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                SimpleLayoutKt.a((Modifier) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                final TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj4;
                final CoroutineScope coroutineScope = (CoroutineScope) obj3;
                TextContextMenuBuilderScope textContextMenuBuilderScope = (TextContextMenuBuilderScope) obj;
                final Context context = (Context) obj2;
                boolean k = textFieldSelectionManager.k();
                AnnotatedString n = textFieldSelectionManager.n();
                TextClassificationResult textClassificationResult = null;
                if (n != null) {
                    str = n.k;
                } else {
                    str = null;
                }
                TextRange textRange2 = textFieldSelectionManager.v;
                if (textRange2 != null) {
                    long j = textRange2.a;
                    OffsetMapping offsetMapping = textFieldSelectionManager.b;
                    textRange = new TextRange(TextRangeKt.a(offsetMapping.b((int) (j >> 32)), offsetMapping.b((int) (j & 4294967295L))));
                } else {
                    textRange = null;
                }
                PlatformSelectionBehaviors platformSelectionBehaviors = textFieldSelectionManager.i;
                Function1 function1 = new Function1() { // from class: androidx.compose.foundation.text.selection.e
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj6) {
                        boolean z6;
                        boolean z7;
                        boolean z8;
                        boolean z9;
                        TextContextMenuBuilderScope textContextMenuBuilderScope2 = (TextContextMenuBuilderScope) obj6;
                        MutableObjectList mutableObjectList = textContextMenuBuilderScope2.a;
                        MutableObjectList mutableObjectList2 = textContextMenuBuilderScope2.a;
                        TextContextMenuSeparator textContextMenuSeparator = TextContextMenuSeparator.b;
                        mutableObjectList.g(textContextMenuSeparator);
                        TextContextMenuItems[] textContextMenuItemsArr = TextContextMenuItems.k;
                        final TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                        final int i2 = 1;
                        final int i3 = 0;
                        if (!TextRange.c(textFieldSelectionManager2.o().b) && textFieldSelectionManager2.k() && textFieldSelectionManager2.g != null) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        Object obj7 = null;
                        final TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$1 textFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$1 = new TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$1(textFieldSelectionManager2, null);
                        final CoroutineScope coroutineScope2 = coroutineScope;
                        Function0 function0 = new Function0() { // from class: androidx.compose.foundation.text.selection.d
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                BuildersKt.c(CoroutineScope.this, null, CoroutineStart.m, new TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$textFieldSuspendItem$1$1(null, textFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$1), 1);
                                return Unit.a;
                            }
                        };
                        Context context2 = context;
                        Resources resources = context2.getResources();
                        int i4 = 15;
                        ec ecVar = new ec(i4, function0, obj7);
                        if (z6) {
                            mutableObjectList2.g(new TextContextMenuItem(TextContextMenuKeys.a, resources.getString(R.string.cut), R.attr.actionModeCutDrawable, ecVar));
                        }
                        TextContextMenuItems[] textContextMenuItemsArr2 = TextContextMenuItems.k;
                        if (!TextRange.c(textFieldSelectionManager2.o().b) && textFieldSelectionManager2.g != null) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        final TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$2 textFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$2 = new TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$2(textFieldSelectionManager2, null);
                        Function0 function02 = new Function0() { // from class: androidx.compose.foundation.text.selection.d
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                BuildersKt.c(CoroutineScope.this, null, CoroutineStart.m, new TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$textFieldSuspendItem$1$1(null, textFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$2), 1);
                                return Unit.a;
                            }
                        };
                        Resources resources2 = context2.getResources();
                        ec ecVar2 = new ec(i4, function02, obj7);
                        if (z7) {
                            mutableObjectList2.g(new TextContextMenuItem(TextContextMenuKeys.b, resources2.getString(R.string.copy), R.attr.actionModeCopyDrawable, ecVar2));
                        }
                        TextContextMenuItems[] textContextMenuItemsArr3 = TextContextMenuItems.k;
                        if (textFieldSelectionManager2.k() && ((Boolean) ((SnapshotMutableStateImpl) textFieldSelectionManager2.w).getValue()).booleanValue() && textFieldSelectionManager2.g != null) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        final TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$3 textFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$3 = new TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$3(textFieldSelectionManager2, null);
                        Function0 function03 = new Function0() { // from class: androidx.compose.foundation.text.selection.d
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                BuildersKt.c(CoroutineScope.this, null, CoroutineStart.m, new TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$textFieldSuspendItem$1$1(null, textFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$3), 1);
                                return Unit.a;
                            }
                        };
                        Resources resources3 = context2.getResources();
                        ec ecVar3 = new ec(i4, function03, obj7);
                        if (z8) {
                            mutableObjectList2.g(new TextContextMenuItem(TextContextMenuKeys.c, resources3.getString(R.string.paste), R.attr.actionModePasteDrawable, ecVar3));
                        }
                        TextContextMenuItems[] textContextMenuItemsArr4 = TextContextMenuItems.k;
                        if (TextRange.d(textFieldSelectionManager2.o().b) != textFieldSelectionManager2.o().a.k.length()) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        Function0 function04 = new Function0() { // from class: gh
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                int i5 = i3;
                                Unit unit2 = Unit.a;
                                TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager2;
                                switch (i5) {
                                    case 0:
                                        return Boolean.valueOf(!textFieldSelectionManager3.A);
                                    case 1:
                                        TextFieldValue e = TextFieldSelectionManager.e(textFieldSelectionManager3.o().a, TextRangeKt.a(0, textFieldSelectionManager3.o().a.k.length()));
                                        textFieldSelectionManager3.c.b(e);
                                        long j2 = e.b;
                                        textFieldSelectionManager3.v = new TextRange(j2);
                                        textFieldSelectionManager3.t = TextFieldValue.a(textFieldSelectionManager3.t, null, j2, 5);
                                        textFieldSelectionManager3.h(true);
                                        return unit2;
                                    default:
                                        Function0 function05 = textFieldSelectionManager3.f;
                                        if (function05 != null) {
                                            function05.a();
                                        }
                                        return unit2;
                                }
                            }
                        };
                        Function0 function05 = new Function0() { // from class: gh
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                int i5 = i2;
                                Unit unit2 = Unit.a;
                                TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager2;
                                switch (i5) {
                                    case 0:
                                        return Boolean.valueOf(!textFieldSelectionManager3.A);
                                    case 1:
                                        TextFieldValue e = TextFieldSelectionManager.e(textFieldSelectionManager3.o().a, TextRangeKt.a(0, textFieldSelectionManager3.o().a.k.length()));
                                        textFieldSelectionManager3.c.b(e);
                                        long j2 = e.b;
                                        textFieldSelectionManager3.v = new TextRange(j2);
                                        textFieldSelectionManager3.t = TextFieldValue.a(textFieldSelectionManager3.t, null, j2, 5);
                                        textFieldSelectionManager3.h(true);
                                        return unit2;
                                    default:
                                        Function0 function052 = textFieldSelectionManager3.f;
                                        if (function052 != null) {
                                            function052.a();
                                        }
                                        return unit2;
                                }
                            }
                        };
                        Resources resources4 = context2.getResources();
                        ec ecVar4 = new ec(i4, function05, function04);
                        if (z9) {
                            mutableObjectList2.g(new TextContextMenuItem(TextContextMenuKeys.d, resources4.getString(R.string.selectAll), R.attr.actionModeSelectAllDrawable, ecVar4));
                        }
                        TextContextMenuItems[] textContextMenuItemsArr5 = TextContextMenuItems.k;
                        if (!textFieldSelectionManager2.k() || !TextRange.c(textFieldSelectionManager2.o().b)) {
                            i2 = 0;
                        }
                        final int i5 = 2;
                        Function0 function06 = new Function0() { // from class: gh
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                int i52 = i5;
                                Unit unit2 = Unit.a;
                                TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager2;
                                switch (i52) {
                                    case 0:
                                        return Boolean.valueOf(!textFieldSelectionManager3.A);
                                    case 1:
                                        TextFieldValue e = TextFieldSelectionManager.e(textFieldSelectionManager3.o().a, TextRangeKt.a(0, textFieldSelectionManager3.o().a.k.length()));
                                        textFieldSelectionManager3.c.b(e);
                                        long j2 = e.b;
                                        textFieldSelectionManager3.v = new TextRange(j2);
                                        textFieldSelectionManager3.t = TextFieldValue.a(textFieldSelectionManager3.t, null, j2, 5);
                                        textFieldSelectionManager3.h(true);
                                        return unit2;
                                    default:
                                        Function0 function052 = textFieldSelectionManager3.f;
                                        if (function052 != null) {
                                            function052.a();
                                        }
                                        return unit2;
                                }
                            }
                        };
                        Resources resources5 = context2.getResources();
                        ec ecVar5 = new ec(i4, function06, obj7);
                        if (i2 != 0) {
                            mutableObjectList2.g(new TextContextMenuItem(TextContextMenuKeys.e, resources5.getString(R.string.autofill), 0, ecVar5));
                        }
                        mutableObjectList2.g(textContextMenuSeparator);
                        return Unit.a;
                    }
                };
                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = PlatformSelectionBehaviors_androidKt.a;
                if (str != null && textRange != null && platformSelectionBehaviors != null && (platformSelectionBehaviors instanceof PlatformSelectionBehaviorsImpl)) {
                    PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl = (PlatformSelectionBehaviorsImpl) platformSelectionBehaviors;
                    long j2 = textRange.a;
                    Object obj6 = platformSelectionBehaviorsImpl.h;
                    MutexImpl mutexImpl = platformSelectionBehaviorsImpl.e;
                    if (mutexImpl.f()) {
                        TextClassificationResult textClassificationResult2 = (TextClassificationResult) ((SnapshotMutableStateImpl) platformSelectionBehaviorsImpl.g).getValue();
                        if (textClassificationResult2 == null || !TextRange.b(j2, textClassificationResult2.b) || !Intrinsics.a(str, textClassificationResult2.a)) {
                            textClassificationResult2 = null;
                        }
                        mutexImpl.h(null);
                        textClassificationResult = textClassificationResult2;
                    }
                    if (textClassificationResult == null) {
                        function1.b(textContextMenuBuilderScope);
                    } else {
                        ArrayList arrayList = textClassificationResult.d;
                        TextClassification textClassification = textClassificationResult.c;
                        if (!textClassification.getActions().isEmpty()) {
                            textContextMenuBuilderScope.a.g(new TextContextMenuTextClassificationItem(obj6, textClassification, 0, (Drawable) arrayList.get(0)));
                        } else if ((textClassification.getIcon() != null || !TextUtils.isEmpty(textClassification.getLabel())) && (textClassification.getIntent() != null || textClassification.getOnClickListener() != null)) {
                            textContextMenuBuilderScope.a.g(new TextContextMenuTextClassificationItem(obj6, textClassification, -1, textClassification.getIcon()));
                        }
                        function1.b(textContextMenuBuilderScope);
                        List<RemoteAction> actions = textClassification.getActions();
                        int size = actions.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            actions.get(i2);
                            if (i2 > 0) {
                                textContextMenuBuilderScope.a.g(new TextContextMenuTextClassificationItem(obj6, textClassification, i2, (Drawable) arrayList.get(i2)));
                            }
                        }
                    }
                    ProcessText_androidKt.a(textContextMenuBuilderScope, context, k, str, textRange.a);
                } else {
                    function1.b(textContextMenuBuilderScope);
                    if (str != null && textRange != null) {
                        ProcessText_androidKt.a(textContextMenuBuilderScope, context, k, str, textRange.a);
                    }
                }
                return unit;
            default:
                ((Integer) obj2).getClass();
                TransferCreationScreenKt.b((String) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
        }
    }

    public /* synthetic */ zc(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }

    public /* synthetic */ zc(int i, int i2, Object obj, Object obj2) {
        this.j = i2;
        this.k = obj;
        this.l = obj2;
    }
}

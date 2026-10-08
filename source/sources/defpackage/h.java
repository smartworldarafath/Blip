package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.collection.MutableIntList;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.BringIntoViewSpec_androidKt;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.CompositionLocalMapKt;
import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.BackwardsCompatNode;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNode_androidKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.ParagraphStyle;
import androidx.compose.ui.text.input.PlatformTextInputService;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.compose.AsyncImagePainter;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.audiopicker.AudioFile;
import net.blip.shared.AvatarKt;
import net.blip.shared.AvatarTheme;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Function1 {
    public final /* synthetic */ int j;

    public /* synthetic */ h(int i) {
        this.j = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        long d;
        int i = this.j;
        LayoutNode layoutNode = null;
        boolean z = false;
        Unit unit = Unit.a;
        switch (i) {
            case 0:
                PointerType pointerType = (PointerType) obj;
                if (pointerType != null && pointerType.a == 2) {
                    z = true;
                }
                return Boolean.valueOf(!z);
            case 1:
                Context context = (Context) obj;
                context.getClass();
                if (!(context instanceof ContextWrapper)) {
                    return null;
                }
                return ((ContextWrapper) context).getBaseContext();
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return Boolean.TRUE;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Class cls = AndroidComposeView.R0;
                return Boolean.TRUE;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                MutableIntList mutableIntList = AndroidComposeViewAccessibilityDelegateCompat.W;
                return Boolean.valueOf(SemanticsNode_androidKt.a((SemanticsNode) obj));
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                return (PlatformTextInputService) obj;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                CompositionLocalAccessorScope compositionLocalAccessorScope = (CompositionLocalAccessorScope) obj;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidCompositionLocals_androidKt.a;
                PersistentCompositionLocalMap persistentCompositionLocalMap = (PersistentCompositionLocalMap) compositionLocalAccessorScope;
                persistentCompositionLocalMap.getClass();
                CompositionLocalMapKt.a(persistentCompositionLocalMap, dynamicProvidableCompositionLocal);
                return ((Context) CompositionLocalMapKt.a((PersistentCompositionLocalMap) compositionLocalAccessorScope, AndroidCompositionLocals_androidKt.b)).getResources();
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return Boolean.valueOf(SemanticsNode_androidKt.a((SemanticsNode) obj));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
                ((SemanticsPropertyReceiver) obj).b(SemanticsProperties.y, unit);
                return unit;
            case KeyModifiers.a /* 9 */:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AndroidPopup_androidKt.a;
                KProperty[] kPropertyArr2 = SemanticsPropertiesKt.a;
                ((SemanticsPropertyReceiver) obj).b(SemanticsProperties.x, unit);
                return unit;
            case KeyModifiers.b /* 10 */:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = AndroidTextStylesKt.a;
                long j = ((TextUnit) obj).a;
                long d2 = TextUnitKt.d(10);
                TextUnitKt.a(j, d2);
                if (Float.compare(TextUnit.c(j), TextUnit.c(d2)) <= 0) {
                    d = TextUnitKt.c(0.75d);
                } else {
                    long d3 = TextUnitKt.d(12);
                    TextUnitKt.a(j, d3);
                    if (Float.compare(TextUnit.c(j), TextUnit.c(d3)) <= 0) {
                        d = TextUnitKt.c(0.3d);
                    } else {
                        long d4 = TextUnitKt.d(14);
                        TextUnitKt.a(j, d4);
                        if (Float.compare(TextUnit.c(j), TextUnit.c(d4)) <= 0) {
                            d = TextUnitKt.c(0.25d);
                        } else {
                            long d5 = TextUnitKt.d(16);
                            TextUnitKt.a(j, d5);
                            if (Float.compare(TextUnit.c(j), TextUnit.c(d5)) <= 0) {
                                d = TextUnitKt.c(0.15d);
                            } else {
                                long d6 = TextUnitKt.d(18);
                                TextUnitKt.a(j, d6);
                                if (Float.compare(TextUnit.c(j), TextUnit.c(d6)) <= 0) {
                                    d = TextUnitKt.c(0.1d);
                                } else {
                                    long d7 = TextUnitKt.d(20);
                                    TextUnitKt.a(j, d7);
                                    if (Float.compare(TextUnit.c(j), TextUnit.c(d7)) <= 0) {
                                        d = TextUnitKt.c(-0.05d);
                                    } else {
                                        long d8 = TextUnitKt.d(24);
                                        TextUnitKt.a(j, d8);
                                        if (Float.compare(TextUnit.c(j), TextUnit.c(d8)) <= 0) {
                                            d = TextUnitKt.d(0);
                                        } else {
                                            long d9 = TextUnitKt.d(28);
                                            TextUnitKt.a(j, d9);
                                            if (Float.compare(TextUnit.c(j), TextUnit.c(d9)) <= 0) {
                                                d = TextUnitKt.c(-0.05d);
                                            } else {
                                                long d10 = TextUnitKt.d(32);
                                                TextUnitKt.a(j, d10);
                                                if (Float.compare(TextUnit.c(j), TextUnit.c(d10)) <= 0) {
                                                    d = TextUnitKt.c(-0.15d);
                                                } else {
                                                    long d11 = TextUnitKt.d(36);
                                                    TextUnitKt.a(j, d11);
                                                    if (Float.compare(TextUnit.c(j), TextUnit.c(d11)) <= 0) {
                                                        d = TextUnitKt.c(-0.75d);
                                                    } else {
                                                        d = TextUnitKt.d(1);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return new TextUnit(d);
            case 11:
                AndroidViewHolder androidViewHolder = (AndroidViewHolder) obj;
                h hVar = AndroidViewHolder.J;
                androidViewHolder.getHandler().post(new q0(4, androidViewHolder.A));
                return unit;
            case KeyModifiers.c /* 12 */:
                h hVar2 = AndroidViewHolder.J;
                return unit;
            case 13:
                return unit;
            case 14:
                AnnotatedString annotatedString = AnnotatedStringKt.a;
                return Boolean.valueOf(!(((AnnotatedString.Annotation) obj) instanceof ParagraphStyle));
            case 15:
                return (AsyncImagePainter.State) obj;
            case 16:
                AudioFile audioFile = (AudioFile) obj;
                audioFile.getClass();
                return audioFile.d;
            case 17:
                ((AnimatedContentTransitionScope) obj).getClass();
                return AnimatedContentKt.d(EnterExitTransitionKt.c(null, 3), EnterExitTransitionKt.d(null, 3));
            case 18:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal4 = AvatarKt.a;
                long j2 = ((Duration) obj).j;
                Duration.Companion companion = Duration.k;
                if (Duration.c(j2, DurationKt.d(30, DurationUnit.l)) > 0) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 19:
                AvatarTheme.Appearance appearance = (AvatarTheme.Appearance) obj;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal5 = AvatarKt.a;
                appearance.getClass();
                return appearance.i;
            case 20:
                BackwardsCompatNode backwardsCompatNode = (BackwardsCompatNode) obj;
                backwardsCompatNode.getClass();
                DrawModifierNodeKt.a(backwardsCompatNode);
                return unit;
            case 21:
                ((BackwardsCompatNode) obj).a1();
                return unit;
            case 22:
                int i2 = BasicTextFieldKt.a;
                return unit;
            case 23:
                ((LayoutNodeDrawScope) ((ContentDrawScope) obj)).a();
                return unit;
            case 24:
                ComputedProvidableCompositionLocal computedProvidableCompositionLocal = BringIntoViewSpec_androidKt.a;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.b;
                PersistentCompositionLocalMap persistentCompositionLocalMap2 = (PersistentCompositionLocalMap) ((CompositionLocalAccessorScope) obj);
                persistentCompositionLocalMap2.getClass();
                if (!((Context) CompositionLocalMapKt.a(persistentCompositionLocalMap2, staticProvidableCompositionLocal)).getPackageManager().hasSystemFeature("android.software.leanback")) {
                    BringIntoViewSpec.a.getClass();
                    return BringIntoViewSpec.Companion.c;
                }
                return BringIntoViewSpec_androidKt.b;
            case 25:
                SemanticsPropertiesKt.c((SemanticsPropertyReceiver) obj, 0);
                return unit;
            case 26:
                AvatarTheme.Appearance appearance2 = (AvatarTheme.Appearance) obj;
                appearance2.getClass();
                return appearance2.i;
            case 27:
                AvatarTheme.Appearance appearance3 = (AvatarTheme.Appearance) obj;
                appearance3.getClass();
                return appearance3.f;
            case 28:
                ComposeUiNode composeUiNode = (ComposeUiNode) obj;
                if (composeUiNode instanceof LayoutNode) {
                    layoutNode = (LayoutNode) composeUiNode;
                }
                if (layoutNode != null && layoutNode.Z) {
                    InlineClassHelperKt.b("Apply is called on deactivated node " + composeUiNode);
                }
                return unit;
            default:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = CompositionLocalsKt.o;
                PersistentCompositionLocalMap persistentCompositionLocalMap3 = (PersistentCompositionLocalMap) ((CompositionLocalAccessorScope) obj);
                persistentCompositionLocalMap3.getClass();
                return (Locale) CollectionsKt.r((Iterable) CompositionLocalMapKt.a(persistentCompositionLocalMap3, staticProvidableCompositionLocal2));
        }
    }
}

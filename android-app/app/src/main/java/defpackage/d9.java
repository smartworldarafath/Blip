package defpackage;

import android.content.Context;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.DividerKt;
import net.blip.android.ui.help.ComposableSingletons$HelpScreenSendToYourDevicesKt;
import net.blip.android.ui.help.HelpScreenSendToYourDevicesKt;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.User;
import net.blip.shared.LinkableTextKt;
import net.blip.shared.PlatformTextKt;
import net.blip.shared.ProvideSharedCompositionLocalsKt;
import net.blip.shared.SimpleLinkTextButton;
import net.blip.shared.Strings;
import net.blip.shared.Strings$Help$SendToOtherPeople;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d9 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Ref$ObjectRef k;
    public final /* synthetic */ Clipboard l;
    public final /* synthetic */ Context m;

    public /* synthetic */ d9(Ref$ObjectRef ref$ObjectRef, Clipboard clipboard, Context context, int i) {
        this.j = i;
        this.k = ref$ObjectRef;
        this.l = clipboard;
        this.m = context;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        Modifier b;
        boolean z2;
        String str;
        int i = this.j;
        e6 e6Var = ComposeUiNode.Companion.b;
        e6 e6Var2 = ComposeUiNode.Companion.e;
        e6 e6Var3 = ComposeUiNode.Companion.c;
        e6 e6Var4 = ComposeUiNode.Companion.d;
        x9 x9Var = LayoutNode.b0;
        BiasAlignment.Horizontal horizontal = Alignment.Companion.m;
        Arrangement$Top$1 arrangement$Top$1 = Arrangement.b;
        Modifier.Companion companion = Modifier.Companion.b;
        Unit unit = Unit.a;
        final Context context = this.m;
        final Clipboard clipboard = this.l;
        final Ref$ObjectRef ref$ObjectRef = this.k;
        boolean z3 = false;
        final int i2 = 1;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    Modifier h = PaddingKt.h(WindowInsetsPadding_androidKt.c(SizeKt.b(companion, 1.0f)), 0.0f, 48.0f, 0.0f, 0.0f, 13);
                    ColumnMeasurePolicy a = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer, 0);
                    int hashCode = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap l = gapComposer.l();
                    Modifier c = ComposedModifierKt.c(gapComposer, h);
                    ComposeUiNode.b.getClass();
                    gapComposer.Z();
                    if (gapComposer.S) {
                        gapComposer.k(x9Var);
                    } else {
                        gapComposer.j0();
                    }
                    Updater.c(gapComposer, a, e6Var4);
                    Updater.c(gapComposer, l, e6Var3);
                    Updater.c(gapComposer, Integer.valueOf(hashCode), e6Var2);
                    Updater.b(gapComposer);
                    Updater.c(gapComposer, c, e6Var);
                    Modifier h2 = PaddingKt.h(PaddingKt.d(SizeKt.b(companion, 1.0f), 24.0f), 0.0f, 0.0f, 32.0f, 0.0f, 11);
                    ColumnMeasurePolicy a2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer, 0);
                    int hashCode2 = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap l2 = gapComposer.l();
                    Modifier c2 = ComposedModifierKt.c(gapComposer, h2);
                    gapComposer.Z();
                    if (gapComposer.S) {
                        gapComposer.k(x9Var);
                    } else {
                        gapComposer.j0();
                    }
                    Updater.c(gapComposer, a2, e6Var4);
                    Updater.c(gapComposer, l2, e6Var3);
                    q.s(hashCode2, gapComposer, e6Var2, gapComposer);
                    Updater.c(gapComposer, c2, e6Var);
                    String str2 = Strings$Help$SendToOtherPeople.a;
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidTextStylesKt.a;
                    PlatformTextKt.c("How to send to other people", null, TextStyle.a(((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).a, 0L, TextUnitKt.d(32), FontWeight.u, 0L, 0L, null, 0, 16777209), 0, false, 0, 0, null, gapComposer, 0, 506);
                    SpacerKt.a(gapComposer, SizeKt.e(companion, 10.0f));
                    TextStyle textStyle = ((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).b;
                    long d = TextUnitKt.d(18);
                    FontWeight fontWeight = FontWeight.r;
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AndroidColorsKt.a;
                    PlatformTextKt.c("You can send files to other people who have the Blip app installed and set up.", null, TextStyle.a(textStyle, ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal2)).e, d, fontWeight, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer, 0, 506);
                    SpacerKt.a(gapComposer, SizeKt.e(companion, 12.0f));
                    PlatformTextKt.c("To send files, search for people by their name or email address.", null, TextStyle.a(((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).b, ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal2)).e, TextUnitKt.d(18), fontWeight, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer, 0, 506);
                    SpacerKt.a(gapComposer, SizeKt.e(companion, 12.0f));
                    final int i3 = 0;
                    LinkableTextKt.a(null, Strings$Help$SendToOtherPeople.a, TextStyle.a(((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).b, ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal2)).e, TextUnitKt.d(18), fontWeight, 0L, 0L, null, 0, 16777208), new SimpleLinkTextButton(((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal2)).b, new Function1() { // from class: net.blip.android.ui.help.a
                        @Override // kotlin.jvm.functions.Function1
                        public final Object b(Object obj3) {
                            int i4 = i3;
                            Unit unit2 = Unit.a;
                            Context context2 = context;
                            Clipboard clipboard2 = clipboard;
                            Ref$ObjectRef ref$ObjectRef2 = ref$ObjectRef;
                            String str3 = (String) obj3;
                            switch (i4) {
                                case 0:
                                    str3.getClass();
                                    BuildersKt.c((CoroutineScope) ref$ObjectRef2.j, null, null, new HelpScreenSendToOtherPeopleKt$HelpScreenSendToOtherPeople$2$1$1$1$1(clipboard2, str3, context2, null), 3);
                                    return unit2;
                                default:
                                    str3.getClass();
                                    BuildersKt.c((CoroutineScope) ref$ObjectRef2.j, null, null, new HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1(clipboard2, str3, context2, null), 3);
                                    return unit2;
                            }
                        }
                    }), gapComposer, 0, 1);
                    b = ColumnScopeInstance.a.b(true);
                    SpacerKt.a(gapComposer, b);
                    PlatformTextKt.c("Thanks for spreading the word! ❤︎", null, TextStyle.a(((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).b, ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal2)).f, 0L, null, 0L, 0L, null, 0, 16777214), 0, false, 0, 0, null, gapComposer, 6, 506);
                    gapComposer.p(true);
                    gapComposer.p(true);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    Modifier.Companion companion2 = Modifier.Companion.b;
                    Modifier b2 = ScrollKt.b(PaddingKt.h(WindowInsetsPadding_androidKt.c(companion2), 0.0f, 48.0f, 0.0f, 0.0f, 13), ScrollKt.a(gapComposer2));
                    ColumnMeasurePolicy a3 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer2, 0);
                    int hashCode3 = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap l3 = gapComposer2.l();
                    Modifier c3 = ComposedModifierKt.c(gapComposer2, b2);
                    ComposeUiNode.b.getClass();
                    gapComposer2.Z();
                    if (gapComposer2.S) {
                        gapComposer2.k(x9Var);
                    } else {
                        gapComposer2.j0();
                    }
                    Updater.c(gapComposer2, a3, e6Var4);
                    Updater.c(gapComposer2, l3, e6Var3);
                    Updater.c(gapComposer2, Integer.valueOf(hashCode3), e6Var2);
                    Updater.b(gapComposer2);
                    Updater.c(gapComposer2, c3, e6Var);
                    Modifier h3 = PaddingKt.h(PaddingKt.d(companion2, 24.0f), 0.0f, 0.0f, 32.0f, 0.0f, 11);
                    ColumnMeasurePolicy a4 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer2, 0);
                    int hashCode4 = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap l4 = gapComposer2.l();
                    Modifier c4 = ComposedModifierKt.c(gapComposer2, h3);
                    gapComposer2.Z();
                    if (gapComposer2.S) {
                        gapComposer2.k(x9Var);
                    } else {
                        gapComposer2.j0();
                    }
                    Updater.c(gapComposer2, a4, e6Var4);
                    Updater.c(gapComposer2, l4, e6Var3);
                    q.s(hashCode4, gapComposer2, e6Var2, gapComposer2);
                    Updater.c(gapComposer2, c4, e6Var);
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = AndroidTextStylesKt.a;
                    PlatformTextKt.c("How to send to your other devices", null, TextStyle.a(((AndroidTextStyles) gapComposer2.j(dynamicProvidableCompositionLocal3)).a, 0L, TextUnitKt.d(32), FontWeight.u, 0L, 0L, null, 0, 16777209), 0, false, 0, 0, null, gapComposer2, 0, 506);
                    SpacerKt.a(gapComposer2, SizeKt.e(companion2, 10.0f));
                    TextStyle textStyle2 = ((AndroidTextStyles) gapComposer2.j(dynamicProvidableCompositionLocal3)).b;
                    long d2 = TextUnitKt.d(18);
                    FontWeight fontWeight2 = FontWeight.r;
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal4 = AndroidColorsKt.a;
                    PlatformTextKt.c("You can send to your other devices that have the Blip app — wherever they are in the world.", null, TextStyle.a(textStyle2, ((AndroidColors) gapComposer2.j(dynamicProvidableCompositionLocal4)).e, d2, fontWeight2, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer2, 0, 506);
                    gapComposer2.p(true);
                    SpacerKt.a(gapComposer2, SizeKt.e(companion2, 8.0f));
                    DividerKt.a(null, gapComposer2, 0, 1);
                    SpacerKt.a(gapComposer2, SizeKt.e(companion2, 8.0f));
                    Modifier h4 = PaddingKt.h(companion2, 24.0f, 20.0f, 40.0f, 0.0f, 8);
                    ColumnMeasurePolicy a5 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer2, 0);
                    int hashCode5 = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap l5 = gapComposer2.l();
                    Modifier c5 = ComposedModifierKt.c(gapComposer2, h4);
                    gapComposer2.Z();
                    if (gapComposer2.S) {
                        gapComposer2.k(x9Var);
                    } else {
                        gapComposer2.j0();
                    }
                    Updater.c(gapComposer2, a5, e6Var4);
                    Updater.c(gapComposer2, l5, e6Var3);
                    q.s(hashCode5, gapComposer2, e6Var2, gapComposer2);
                    Updater.c(gapComposer2, c5, e6Var);
                    PlatformTextKt.c("To set up another device", null, TextStyle.a(((AndroidTextStyles) gapComposer2.j(dynamicProvidableCompositionLocal3)).a, ((AndroidColors) gapComposer2.j(dynamicProvidableCompositionLocal4)).e, TextUnitKt.d(18), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer2, 0, 506);
                    SpacerKt.a(gapComposer2, SizeKt.e(companion2, 28.0f));
                    HelpScreenSendToYourDevicesKt.a(null, "1", ComposableLambdaKt.b(779879753, new d9(ref$ObjectRef, clipboard, context, 2), gapComposer2), gapComposer2, 432);
                    SpacerKt.a(gapComposer2, SizeKt.e(companion2, 24.0f));
                    User b3 = State_DerivedKt.b(ProvideSharedCompositionLocalsKt.b(ProvideSharedCompositionLocalsKt.d, gapComposer2));
                    if (b3 == null || (str = b3.n) == null) {
                        str = "unknown";
                    }
                    HelpScreenSendToYourDevicesKt.a(null, "2", ComposableLambdaKt.b(1040158514, new w(str, 2), gapComposer2), gapComposer2, 432);
                    SpacerKt.a(gapComposer2, SizeKt.e(companion2, 26.0f));
                    HelpScreenSendToYourDevicesKt.a(null, "3", ComposableSingletons$HelpScreenSendToYourDevicesKt.a, gapComposer2, 432);
                    gapComposer2.p(true);
                    gapComposer2.p(true);
                    return unit;
                }
                gapComposer2.Q();
                return unit;
            default:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z3 = true;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z3)) {
                    Modifier c6 = OffsetKt.c(companion, -5.0f, 1);
                    String str3 = Strings.a;
                    str3.getClass();
                    String h5 = jb.h("Install the Blip app on your other device.Visit [", StringsKt.B(StringsKt.B(str3, "http://"), "https://"), "](", str3, ") to easily find the app.");
                    TextStyle textStyle3 = ((AndroidTextStyles) gapComposer3.j(AndroidTextStylesKt.a)).b;
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal5 = AndroidColorsKt.a;
                    LinkableTextKt.a(c6, h5, TextStyle.a(textStyle3, ((AndroidColors) gapComposer3.j(dynamicProvidableCompositionLocal5)).e, TextUnitKt.d(16), FontWeight.r, 0L, 0L, null, 0, 16777208), new SimpleLinkTextButton(((AndroidColors) gapComposer3.j(dynamicProvidableCompositionLocal5)).b, new Function1() { // from class: net.blip.android.ui.help.a
                        @Override // kotlin.jvm.functions.Function1
                        public final Object b(Object obj3) {
                            int i4 = i2;
                            Unit unit2 = Unit.a;
                            Context context2 = context;
                            Clipboard clipboard2 = clipboard;
                            Ref$ObjectRef ref$ObjectRef2 = ref$ObjectRef;
                            String str32 = (String) obj3;
                            switch (i4) {
                                case 0:
                                    str32.getClass();
                                    BuildersKt.c((CoroutineScope) ref$ObjectRef2.j, null, null, new HelpScreenSendToOtherPeopleKt$HelpScreenSendToOtherPeople$2$1$1$1$1(clipboard2, str32, context2, null), 3);
                                    return unit2;
                                default:
                                    str32.getClass();
                                    BuildersKt.c((CoroutineScope) ref$ObjectRef2.j, null, null, new HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1(clipboard2, str32, context2, null), 3);
                                    return unit2;
                            }
                        }
                    }), gapComposer3, 6, 0);
                } else {
                    gapComposer3.Q();
                }
                return unit;
        }
    }
}

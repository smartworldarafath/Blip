package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors_androidKt;
import androidx.compose.foundation.text.selection.SelectedTextType;
import androidx.compose.material.ProgressIndicatorKt;
import androidx.compose.material.icons.rounded.PhotoCameraKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.PathNode;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavBackStackEntry;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function4;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.internal.AbstractJsonLexer;
import kotlinx.serialization.json.internal.StreamingJsonDecoder;
import kotlinx.serialization.json.internal.StringJsonLexer;
import kotlinx.serialization.json.internal.WriteMode;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.SubheadingKt;
import net.blip.android.ui.navigation.AuthScopeKt;
import net.blip.android.ui.navigation.ComposableSingletons$NavigationRootKt;
import net.blip.android.ui.navigation.NavResultWriter;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.android.ui.transfer.TransferThumbnailStackKt;
import net.blip.libblip.PeerId;
import net.blip.libblip.PeerId_DerivedKt;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.PlatformTextKt;
import net.blip.shared.Strings;
import net.blip.shared.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class t5 implements Function4 {
    public final /* synthetic */ int j;

    public /* synthetic */ t5(int i) {
        this.j = i;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object j(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean z;
        boolean z2;
        String str;
        Composer composer;
        String e;
        String string;
        String str2;
        int i = this.j;
        int i2 = 16;
        Modifier.Companion companion = Modifier.Companion.b;
        Integer num = null;
        String str3 = null;
        String str4 = null;
        num = null;
        Unit unit = Unit.a;
        switch (i) {
            case 0:
                boolean booleanValue = ((Boolean) obj2).booleanValue();
                Composer composer2 = (Composer) obj3;
                int intValue = ((Integer) obj4).intValue();
                ((AnimatedContentScope) obj).getClass();
                if ((intValue & 48) == 0) {
                    if (((GapComposer) composer2).g(booleanValue)) {
                        i2 = 32;
                    }
                    intValue |= i2;
                }
                if ((intValue & 145) != 144) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer2;
                if (gapComposer.N(intValue & 1, z)) {
                    if (booleanValue) {
                        gapComposer.W(-1158167313);
                        ProgressIndicatorKt.b(SizeKt.k(companion, 24.0f), 0L, 3.0f, 0L, 1, gapComposer, 390, 10);
                        gapComposer.p(false);
                    } else {
                        gapComposer.W(-1157898264);
                        Modifier k = SizeKt.k(companion, 24.0f);
                        long j = ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).e;
                        k.getClass();
                        Modifier d = DrawModifierKt.d(GraphicsLayerModifierKt.b(k, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, 0L, 0L, 1, 983039), new ma(4, new SolidColor(j)));
                        ImageVector imageVector = PhotoCameraKt.a;
                        if (imageVector == null) {
                            ImageVector.Builder builder = new ImageVector.Builder("Rounded.PhotoCamera", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                            int i3 = VectorKt.a;
                            long j2 = Color.b;
                            SolidColor solidColor = new SolidColor(j2);
                            PathBuilder pathBuilder = new PathBuilder();
                            pathBuilder.i(12.0f, 12.0f);
                            PathNode.RelativeMoveTo relativeMoveTo = new PathNode.RelativeMoveTo(-3.0f, 0.0f);
                            ArrayList arrayList = pathBuilder.a;
                            arrayList.add(relativeMoveTo);
                            pathBuilder.a(3.0f, 3.0f, 6.0f);
                            pathBuilder.a(3.0f, 3.0f, -6.0f);
                            builder.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", arrayList);
                            SolidColor solidColor2 = new SolidColor(j2);
                            PathBuilder pathBuilder2 = new PathBuilder();
                            pathBuilder2.i(20.0f, 4.0f);
                            pathBuilder2.f(-3.17f);
                            pathBuilder2.h(-1.24f, -1.35f);
                            pathBuilder2.d(-0.37f, -0.41f, -0.91f, -0.65f, -1.47f, -0.65f);
                            pathBuilder2.g(9.88f, 2.0f);
                            pathBuilder2.d(-0.56f, 0.0f, -1.1f, 0.24f, -1.48f, 0.65f);
                            pathBuilder2.g(7.17f, 4.0f);
                            pathBuilder2.g(4.0f, 4.0f);
                            pathBuilder2.d(-1.1f, 0.0f, -2.0f, 0.9f, -2.0f, 2.0f);
                            pathBuilder2.m(12.0f);
                            pathBuilder2.d(0.0f, 1.1f, 0.9f, 2.0f, 2.0f, 2.0f);
                            pathBuilder2.f(16.0f);
                            pathBuilder2.d(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
                            pathBuilder2.g(22.0f, 6.0f);
                            pathBuilder2.d(0.0f, -1.1f, -0.9f, -2.0f, -2.0f, -2.0f);
                            pathBuilder2.b();
                            pathBuilder2.i(12.0f, 17.0f);
                            pathBuilder2.d(-2.76f, 0.0f, -5.0f, -2.24f, -5.0f, -5.0f);
                            pathBuilder2.k(2.24f, -5.0f, 5.0f, -5.0f);
                            pathBuilder2.k(5.0f, 2.24f, 5.0f, 5.0f);
                            pathBuilder2.k(-2.24f, 5.0f, -5.0f, 5.0f);
                            pathBuilder2.b();
                            builder.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor2, null, "", pathBuilder2.a);
                            imageVector = builder.d();
                            PhotoCameraKt.a = imageVector;
                        }
                        ImageKt.b(imageVector, null, d, null, gapComposer, 48, 120);
                        gapComposer.p(false);
                    }
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                boolean booleanValue2 = ((Boolean) obj2).booleanValue();
                Composer composer3 = (Composer) obj3;
                int intValue2 = ((Integer) obj4).intValue();
                ((LazyItemScope) obj).getClass();
                if ((intValue2 & 48) == 0) {
                    if (((GapComposer) composer3).g(booleanValue2)) {
                        i2 = 32;
                    }
                    intValue2 |= i2;
                }
                if ((intValue2 & 145) != 144) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer3;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    Modifier g = PaddingKt.g(companion, 12.0f, 20.0f, 12.0f, 10.0f);
                    if (booleanValue2) {
                        str = "Others on Blip";
                    } else {
                        str = "Found on Blip";
                    }
                    SubheadingKt.a(g, str, 0L, gapComposer2, 0, 4);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((Integer) obj4).getClass();
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                PeerId peerId = (PeerId) obj2;
                Composer composer4 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((NavBackStackEntry) obj).getClass();
                peerId.getClass();
                NavigationRootKt.a(ComposableLambdaKt.b(-969023348, new y5(peerId), composer4), composer4, 6);
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                NavResultWriter navResultWriter = (NavResultWriter) obj2;
                Composer composer5 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((NavBackStackEntry) obj).getClass();
                navResultWriter.getClass();
                NavigationRootKt.a(ComposableLambdaKt.b(-692896148, new h3(navResultWriter), composer5), composer5, 6);
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                NavigationRootKt.a(ComposableSingletons$NavigationRootKt.a, (Composer) obj3, 6);
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                AuthScopeKt.a(ComposableSingletons$NavigationRootKt.c, (Composer) obj3, 6);
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                AuthScopeKt.a(ComposableSingletons$NavigationRootKt.e, (Composer) obj3, 6);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                String str5 = (String) obj2;
                Composer composer6 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((NavBackStackEntry) obj).getClass();
                str5.getClass();
                AuthScopeKt.a(ComposableLambdaKt.b(-358547421, new a6(str5, 0), composer6), composer6, 6);
                return unit;
            case KeyModifiers.a /* 9 */:
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                NavigationRootKt.a(ComposableSingletons$NavigationRootKt.h, (Composer) obj3, 6);
                return unit;
            case KeyModifiers.b /* 10 */:
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                NavigationRootKt.a(ComposableSingletons$NavigationRootKt.j, (Composer) obj3, 6);
                return unit;
            case 11:
                List list = (List) obj2;
                Composer composer7 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((NavBackStackEntry) obj).getClass();
                list.getClass();
                NavigationRootKt.a(ComposableLambdaKt.b(-1781745046, new x5(list), composer7), composer7, 6);
                return unit;
            case KeyModifiers.c /* 12 */:
                Pair pair = (Pair) obj2;
                Composer composer8 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                pair.getClass();
                Transfer transfer = (Transfer) pair.j;
                boolean booleanValue3 = ((Boolean) pair.k).booleanValue();
                Modifier h = PaddingKt.h(PaddingKt.f(companion, 80.0f, 0.0f, 2), 0.0f, 38.0f, 0.0f, 20.0f, 5);
                ColumnMeasurePolicy a = ColumnKt.a(Arrangement.e(20.0f), Alignment.Companion.n, composer8, 54);
                GapComposer gapComposer3 = (GapComposer) composer8;
                int hashCode = Long.hashCode(gapComposer3.T);
                PersistentCompositionLocalMap l = gapComposer3.l();
                Modifier c = ComposedModifierKt.c(composer8, h);
                ComposeUiNode.b.getClass();
                GapComposer gapComposer4 = (GapComposer) composer8;
                gapComposer4.Z();
                boolean z3 = gapComposer4.S;
                x9 x9Var = LayoutNode.b0;
                if (z3) {
                    gapComposer4.k(x9Var);
                } else {
                    gapComposer4.j0();
                }
                e6 e6Var = ComposeUiNode.Companion.d;
                Updater.c(composer8, a, e6Var);
                e6 e6Var2 = ComposeUiNode.Companion.c;
                Updater.c(composer8, l, e6Var2);
                Integer valueOf = Integer.valueOf(hashCode);
                e6 e6Var3 = ComposeUiNode.Companion.e;
                Updater.c(composer8, valueOf, e6Var3);
                Updater.b(composer8);
                e6 e6Var4 = ComposeUiNode.Companion.b;
                Updater.c(composer8, c, e6Var4);
                Modifier k2 = SizeKt.k(companion, 200.0f);
                MeasurePolicy d2 = BoxKt.d(Alignment.Companion.e, false);
                int hashCode2 = Long.hashCode(gapComposer4.T);
                PersistentCompositionLocalMap l2 = gapComposer4.l();
                Modifier c2 = ComposedModifierKt.c(composer8, k2);
                gapComposer4.Z();
                if (gapComposer4.S) {
                    gapComposer4.k(x9Var);
                } else {
                    gapComposer4.j0();
                }
                Updater.c(composer8, d2, e6Var);
                Updater.c(composer8, l2, e6Var2);
                Updater.c(composer8, Integer.valueOf(hashCode2), e6Var3);
                Updater.b(composer8);
                Updater.c(composer8, c2, e6Var4);
                if (transfer != null && booleanValue3) {
                    gapComposer4.W(281450861);
                    TransferThumbnailStackKt.a(SizeKt.c(companion, 1.0f), transfer, composer8, 6);
                    gapComposer4.p(false);
                    composer = composer8;
                } else {
                    gapComposer4.W(281349770);
                    composer = composer8;
                    ProgressIndicatorKt.b(null, 0L, 0.0f, 0L, 0, composer, 0, 31);
                    gapComposer4.p(false);
                }
                gapComposer4.p(true);
                if (transfer == null) {
                    e = "Creating Transfer";
                } else {
                    String str6 = Strings.a;
                    e = StringsKt.e(transfer);
                }
                PlatformTextKt.c(e, null, TextStyle.a(((AndroidTextStyles) gapComposer4.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer4.j(AndroidColorsKt.a)).d, TextUnitKt.d(18), FontWeight.t, 0L, TextUnitKt.b(1.3d), null, LineBreak.c, 14516216), 0, false, 0, 0, null, composer, 0, 506);
                gapComposer4.p(true);
                return unit;
            case 13:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = PlatformSelectionBehaviors_androidKt.a;
                return new PlatformSelectionBehaviorsImpl((CoroutineContext) obj, (Context) obj2, (SelectedTextType) obj3, (LocaleList) obj4);
            case 14:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj2;
                Composer composer9 = (Composer) obj3;
                int intValue3 = ((Integer) obj4).intValue();
                ((AnimatedContentScope) obj).getClass();
                navBackStackEntry.getClass();
                Bundle b = navBackStackEntry.b();
                if (b != null && (string = b.getString("requestId")) != null) {
                    num = kotlin.text.StringsKt.S(string);
                }
                num.getClass();
                ComposableSingletons$NavigationRootKt.n.j(navBackStackEntry, new NavResultWriter(num.intValue()), composer9, Integer.valueOf((intValue3 >> 3) & 14));
                return unit;
            case 15:
                NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj2;
                Composer composer10 = (Composer) obj3;
                int intValue4 = ((Integer) obj4).intValue();
                ((AnimatedContentScope) obj).getClass();
                navBackStackEntry2.getClass();
                Bundle b2 = navBackStackEntry2.b();
                if (b2 == null || (str2 = b2.getString("urls")) == null) {
                    str2 = "";
                }
                Json.Default r14 = Json.d;
                r14.getClass();
                ArrayListSerializer arrayListSerializer = new ArrayListSerializer(StringSerializer.a);
                r14.getClass();
                str2.getClass();
                StringJsonLexer stringJsonLexer = new StringJsonLexer(str2, r14.a);
                Object x = new StreamingJsonDecoder(r14, WriteMode.l, stringJsonLexer, arrayListSerializer.b, null).x(arrayListSerializer);
                if (stringJsonLexer.d() == 10) {
                    Iterable iterable = (Iterable) x;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.m(iterable, 10));
                    Iterator it = iterable.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(Uri.parse((String) it.next()));
                    }
                    ComposableSingletons$NavigationRootKt.l.j(navBackStackEntry2, arrayList2, composer10, Integer.valueOf((intValue4 >> 3) & 14));
                    return unit;
                }
                AbstractJsonLexer.j(stringJsonLexer, "Expected EOF after parsing, but had " + stringJsonLexer.f.charAt(stringJsonLexer.b - 1) + " instead", 0, null, 6);
                throw null;
            case 16:
                NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) obj2;
                Composer composer11 = (Composer) obj3;
                int intValue5 = ((Integer) obj4).intValue();
                ((AnimatedContentScope) obj).getClass();
                navBackStackEntry3.getClass();
                Bundle b3 = navBackStackEntry3.b();
                if (b3 != null) {
                    str4 = b3.getString("peerId");
                }
                str4.getClass();
                ComposableSingletons$NavigationRootKt.m.j(navBackStackEntry3, PeerId_DerivedKt.a(str4), composer11, Integer.valueOf((intValue5 >> 3) & 14));
                return unit;
            default:
                NavBackStackEntry navBackStackEntry4 = (NavBackStackEntry) obj2;
                Composer composer12 = (Composer) obj3;
                int intValue6 = ((Integer) obj4).intValue();
                ((AnimatedContentScope) obj).getClass();
                navBackStackEntry4.getClass();
                Bundle b4 = navBackStackEntry4.b();
                if (b4 != null) {
                    str3 = b4.getString("deviceId");
                }
                str3.getClass();
                ComposableSingletons$NavigationRootKt.g.j(navBackStackEntry4, str3, composer12, Integer.valueOf((intValue6 >> 3) & 14));
                return unit;
        }
    }
}

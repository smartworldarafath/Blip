package defpackage;

import android.os.Build;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.material.icons.automirrored.rounded.AssignmentKt;
import androidx.compose.material.icons.automirrored.rounded.InsertDriveFileKt;
import androidx.compose.material.icons.rounded.CameraAltKt;
import androidx.compose.material.icons.rounded.FolderKt;
import androidx.compose.material.icons.rounded.MusicNoteKt;
import androidx.compose.material.icons.rounded.PhotoKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.PathNode;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.res.VectorResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.unit.TextUnitKt;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.blip.android.R;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.DividerKt;
import net.blip.android.ui.home.ComposableSingletons$HomeScreenKt;
import net.blip.android.ui.lockups.BlankStateLockupKt;
import net.blip.android.ui.navigation.ShareInAppKt;
import net.blip.android.ui.peer.PeerScreenKt;
import net.blip.android.ui.util.NuancedPermissionState;
import net.blip.android.ui.util.UmbrellaContentPickerKt;
import net.blip.libblip.Peer;
import net.blip.shared.AvatarKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class i9 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ boolean l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;

    public /* synthetic */ i9(Peer peer, boolean z, Function1 function1, boolean z2) {
        this.j = 2;
        this.m = peer;
        this.k = z;
        this.n = function1;
        this.l = z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x037f, code lost:
    
        if (r10 == r5) goto L33;
     */
    @Override // kotlin.jvm.functions.Function2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        boolean z3;
        GapComposer gapComposer;
        Object obj3;
        int i = this.j;
        final boolean z4 = this.l;
        Unit unit = Unit.a;
        Object obj4 = Composer.Companion.a;
        Object obj5 = this.n;
        Object obj6 = this.m;
        switch (i) {
            case 0:
                final MutableState mutableState = (MutableState) obj6;
                final Function1 function1 = (Function1) obj5;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer;
                if (gapComposer2.N(intValue & 1, z)) {
                    boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
                    Object K = gapComposer2.K();
                    if (K == obj4) {
                        K = new o1(mutableState, 15);
                        gapComposer2.g0(K);
                    }
                    final boolean z5 = this.k;
                    AndroidMenu_androidKt.a(booleanValue, (Function0) K, null, 0L, null, null, ComposableLambdaKt.b(260820378, new Function3() { // from class: j9
                        @Override // kotlin.jvm.functions.Function3
                        public final Object f(Object obj7, Object obj8, Object obj9) {
                            boolean z6;
                            Composer composer2 = (Composer) obj8;
                            int intValue2 = ((Integer) obj9).intValue();
                            ((ColumnScope) obj7).getClass();
                            if ((intValue2 & 17) != 16) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            GapComposer gapComposer3 = (GapComposer) composer2;
                            if (gapComposer3.N(intValue2 & 1, z6)) {
                                Function1 function12 = Function1.this;
                                boolean f = gapComposer3.f(function12);
                                Object K2 = gapComposer3.K();
                                MutableState mutableState2 = mutableState;
                                Object obj10 = Composer.Companion.a;
                                if (f || K2 == obj10) {
                                    K2 = new k9(0, mutableState2, function12);
                                    gapComposer3.g0(K2);
                                }
                                AndroidMenu_androidKt.b((Function0) K2, null, z5, null, ComposableSingletons$HomeScreenKt.a, gapComposer3, 196608, 26);
                                boolean f2 = gapComposer3.f(function12);
                                Object K3 = gapComposer3.K();
                                if (f2 || K3 == obj10) {
                                    K3 = new k9(1, mutableState2, function12);
                                    gapComposer3.g0(K3);
                                }
                                AndroidMenu_androidKt.b((Function0) K3, null, false, null, ComposableSingletons$HomeScreenKt.b, gapComposer3, 196608, 30);
                                boolean f3 = gapComposer3.f(function12);
                                Object K4 = gapComposer3.K();
                                if (f3 || K4 == obj10) {
                                    K4 = new k9(2, mutableState2, function12);
                                    gapComposer3.g0(K4);
                                }
                                AndroidMenu_androidKt.b((Function0) K4, null, false, null, ComposableSingletons$HomeScreenKt.c, gapComposer3, 196608, 30);
                                boolean f4 = gapComposer3.f(function12);
                                Object K5 = gapComposer3.K();
                                if (f4 || K5 == obj10) {
                                    K5 = new k9(3, mutableState2, function12);
                                    gapComposer3.g0(K5);
                                }
                                AndroidMenu_androidKt.b((Function0) K5, null, false, null, ComposableSingletons$HomeScreenKt.d, gapComposer3, 196608, 30);
                                if (z4) {
                                    gapComposer3.W(506160363);
                                    boolean f5 = gapComposer3.f(function12);
                                    Object K6 = gapComposer3.K();
                                    if (f5 || K6 == obj10) {
                                        K6 = new k9(4, mutableState2, function12);
                                        gapComposer3.g0(K6);
                                    }
                                    AndroidMenu_androidKt.b((Function0) K6, null, false, null, ComposableSingletons$HomeScreenKt.e, gapComposer3, 196608, 30);
                                    gapComposer3.p(false);
                                } else {
                                    gapComposer3.W(506680264);
                                    gapComposer3.p(false);
                                }
                                boolean f6 = gapComposer3.f(function12);
                                Object K7 = gapComposer3.K();
                                if (f6 || K7 == obj10) {
                                    K7 = new b8(function12, 1);
                                    gapComposer3.g0(K7);
                                }
                                AndroidMenu_androidKt.b((Function0) K7, null, false, null, ComposableSingletons$HomeScreenKt.f, gapComposer3, 196608, 30);
                            } else {
                                gapComposer3.Q();
                            }
                            return Unit.a;
                        }
                    }, gapComposer2), gapComposer2, 1572912, 60);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case 1:
                NuancedPermissionState nuancedPermissionState = (NuancedPermissionState) obj6;
                NuancedPermissionState nuancedPermissionState2 = (NuancedPermissionState) obj5;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer3 = (GapComposer) composer2;
                if (gapComposer3.N(intValue2 & 1, z2)) {
                    if (!nuancedPermissionState.a) {
                        gapComposer3.W(373185027);
                        ImageVector b = VectorResources_androidKt.b(R.drawable.ic_circle_cross, gapComposer3);
                        boolean h = gapComposer3.h(nuancedPermissionState);
                        Object K2 = gapComposer3.K();
                        if (h || K2 == obj4) {
                            K2 = new l3(nuancedPermissionState, 1);
                            gapComposer3.g0(K2);
                        }
                        BlankStateLockupKt.a(null, b, "Not ready to receive", "Blip needs to send you notifications so you can accept transfers", "Turn on notifications", null, (Function0) K2, gapComposer3, 28032, 33);
                        gapComposer3.p(false);
                    } else if (Build.VERSION.SDK_INT <= 29 && !nuancedPermissionState2.a) {
                        gapComposer3.W(373860300);
                        ImageVector b2 = VectorResources_androidKt.b(R.drawable.ic_circle_cross, gapComposer3);
                        boolean h2 = gapComposer3.h(nuancedPermissionState2);
                        Object K3 = gapComposer3.K();
                        if (h2 || K3 == obj4) {
                            K3 = new l3(nuancedPermissionState2, 2);
                            gapComposer3.g0(K3);
                        }
                        BlankStateLockupKt.a(null, b2, "Not ready to receive", "Blip needs to be able to save files to your phone's storage", "Allow storage access", null, (Function0) K3, gapComposer3, 28032, 33);
                        gapComposer3.p(false);
                    } else {
                        gapComposer3.W(374755115);
                        Object K4 = gapComposer3.K();
                        if (K4 == obj4) {
                            K4 = SnapshotStateKt.g(Boolean.FALSE);
                            gapComposer3.g0(K4);
                        }
                        MutableState mutableState2 = (MutableState) K4;
                        Function1 a = ShareInAppKt.a(0, gapComposer3);
                        boolean f = gapComposer3.f(a);
                        Object K5 = gapComposer3.K();
                        if (f || K5 == obj4) {
                            K5 = new c8(a, 1);
                            gapComposer3.g0(K5);
                        }
                        Function1 d = UmbrellaContentPickerKt.d((Function1) K5, gapComposer3);
                        ImageVector b3 = VectorResources_androidKt.b(R.drawable.ic_circle_check, gapComposer3);
                        ComposableLambdaImpl b4 = ComposableLambdaKt.b(183033447, new i9(mutableState2, d, this.k, this.l, 0), gapComposer3);
                        Object K6 = gapComposer3.K();
                        if (K6 == obj4) {
                            K6 = new o1(mutableState2, 14);
                            gapComposer3.g0(K6);
                        }
                        BlankStateLockupKt.a(null, b3, "Ready to receive", "Blip is enabled and ready to receive content at any time", "Send something", b4, (Function0) K6, gapComposer3, 1797504, 1);
                        gapComposer3.p(false);
                    }
                } else {
                    gapComposer3.Q();
                }
                return unit;
            default:
                Peer peer = (Peer) obj6;
                Function1 function12 = (Function1) obj5;
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                GapComposer gapComposer4 = (GapComposer) composer3;
                if (gapComposer4.N(intValue3 & 1, z3)) {
                    Modifier.Companion companion = Modifier.Companion.b;
                    Modifier c = WindowInsetsPadding_androidKt.c(ScrollKt.b(SizeKt.d(companion, 1.0f), ScrollKt.a(gapComposer4)));
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.b;
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.m;
                    ColumnMeasurePolicy a2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer4, 0);
                    int hashCode = Long.hashCode(gapComposer4.T);
                    PersistentCompositionLocalMap l = gapComposer4.l();
                    Modifier c2 = ComposedModifierKt.c(gapComposer4, c);
                    ComposeUiNode.b.getClass();
                    gapComposer4.Z();
                    boolean z6 = gapComposer4.S;
                    x9 x9Var = LayoutNode.b0;
                    if (z6) {
                        gapComposer4.k(x9Var);
                    } else {
                        gapComposer4.j0();
                    }
                    e6 e6Var = ComposeUiNode.Companion.d;
                    Updater.c(gapComposer4, a2, e6Var);
                    e6 e6Var2 = ComposeUiNode.Companion.c;
                    Updater.c(gapComposer4, l, e6Var2);
                    Integer valueOf = Integer.valueOf(hashCode);
                    e6 e6Var3 = ComposeUiNode.Companion.e;
                    Updater.c(gapComposer4, valueOf, e6Var3);
                    Updater.b(gapComposer4);
                    e6 e6Var4 = ComposeUiNode.Companion.b;
                    Updater.c(gapComposer4, c2, e6Var4);
                    Modifier h3 = PaddingKt.h(PaddingKt.f(SizeKt.d(companion, 1.0f), 24.0f, 0.0f, 2), 0.0f, 56.0f, 0.0f, 42.0f, 5);
                    ColumnMeasurePolicy a3 = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposer4, 48);
                    int hashCode2 = Long.hashCode(gapComposer4.T);
                    PersistentCompositionLocalMap l2 = gapComposer4.l();
                    Modifier c3 = ComposedModifierKt.c(gapComposer4, h3);
                    gapComposer4.Z();
                    if (gapComposer4.S) {
                        gapComposer4.k(x9Var);
                    } else {
                        gapComposer4.j0();
                    }
                    Updater.c(gapComposer4, a3, e6Var);
                    Updater.c(gapComposer4, l2, e6Var2);
                    q.s(hashCode2, gapComposer4, e6Var3, gapComposer4);
                    Updater.c(gapComposer4, c3, e6Var4);
                    AvatarKt.d(SizeKt.k(companion, 148.0f), null, peer, null, gapComposer4, 6, 10);
                    SpacerKt.a(gapComposer4, SizeKt.e(companion, 16.0f));
                    String b5 = peer.b();
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidTextStylesKt.a;
                    PlatformTextKt.c(b5, null, TextStyle.a(((AndroidTextStyles) gapComposer4.j(dynamicProvidableCompositionLocal)).a, 0L, TextUnitKt.d(28), FontWeight.u, 0L, 0L, null, 0, 16777209), 0, false, 0, 0, null, gapComposer4, 0, 506);
                    SpacerKt.a(gapComposer4, SizeKt.e(companion, 2.0f));
                    PlatformTextKt.c(peer.a(), null, TextStyle.a(((AndroidTextStyles) gapComposer4.j(dynamicProvidableCompositionLocal)).b, ((AndroidColors) gapComposer4.j(AndroidColorsKt.a)).e, TextUnitKt.d(16), null, 0L, 0L, null, LineBreak.c, 14647292), 0, false, 0, 0, null, gapComposer4, 0, 506);
                    gapComposer4.p(true);
                    DividerKt.a(null, gapComposer4, 0, 1);
                    Modifier e = PaddingKt.e(companion, 8.0f, 28.0f);
                    ColumnMeasurePolicy a4 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer4, 0);
                    int hashCode3 = Long.hashCode(gapComposer4.T);
                    PersistentCompositionLocalMap l3 = gapComposer4.l();
                    Modifier c4 = ComposedModifierKt.c(gapComposer4, e);
                    gapComposer4.Z();
                    if (gapComposer4.S) {
                        gapComposer4.k(x9Var);
                    } else {
                        gapComposer4.j0();
                    }
                    Updater.c(gapComposer4, a4, e6Var);
                    Updater.c(gapComposer4, l3, e6Var2);
                    q.s(hashCode3, gapComposer4, e6Var3, gapComposer4);
                    Updater.c(gapComposer4, c4, e6Var4);
                    ImageVector imageVector = AssignmentKt.a;
                    if (imageVector != null) {
                        gapComposer = gapComposer4;
                    } else {
                        ImageVector.Builder builder = new ImageVector.Builder("AutoMirrored.Rounded.Assignment", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, true, 96);
                        int i2 = VectorKt.a;
                        gapComposer = gapComposer4;
                        SolidColor solidColor = new SolidColor(Color.b);
                        PathBuilder pathBuilder = new PathBuilder();
                        pathBuilder.i(19.0f, 3.0f);
                        pathBuilder.f(-4.18f);
                        pathBuilder.c(14.4f, 1.84f, 13.3f, 1.0f, 12.0f, 1.0f);
                        pathBuilder.k(-2.4f, 0.84f, -2.82f, 2.0f);
                        pathBuilder.g(5.0f, 3.0f);
                        pathBuilder.d(-1.1f, 0.0f, -2.0f, 0.9f, -2.0f, 2.0f);
                        pathBuilder.m(14.0f);
                        pathBuilder.d(0.0f, 1.1f, 0.9f, 2.0f, 2.0f, 2.0f);
                        pathBuilder.f(14.0f);
                        pathBuilder.d(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
                        pathBuilder.g(21.0f, 5.0f);
                        pathBuilder.d(0.0f, -1.1f, -0.9f, -2.0f, -2.0f, -2.0f);
                        pathBuilder.b();
                        pathBuilder.i(12.0f, 3.0f);
                        pathBuilder.d(0.55f, 0.0f, 1.0f, 0.45f, 1.0f, 1.0f);
                        pathBuilder.k(-0.45f, 1.0f, -1.0f, 1.0f);
                        pathBuilder.k(-1.0f, -0.45f, -1.0f, -1.0f);
                        pathBuilder.k(0.45f, -1.0f, 1.0f, -1.0f);
                        pathBuilder.b();
                        pathBuilder.i(13.0f, 17.0f);
                        pathBuilder.g(8.0f, 17.0f);
                        pathBuilder.d(-0.55f, 0.0f, -1.0f, -0.45f, -1.0f, -1.0f);
                        pathBuilder.k(0.45f, -1.0f, 1.0f, -1.0f);
                        pathBuilder.f(5.0f);
                        pathBuilder.d(0.55f, 0.0f, 1.0f, 0.45f, 1.0f, 1.0f);
                        pathBuilder.k(-0.45f, 1.0f, -1.0f, 1.0f);
                        pathBuilder.b();
                        pathBuilder.i(16.0f, 13.0f);
                        pathBuilder.g(8.0f, 13.0f);
                        pathBuilder.d(-0.55f, 0.0f, -1.0f, -0.45f, -1.0f, -1.0f);
                        pathBuilder.k(0.45f, -1.0f, 1.0f, -1.0f);
                        pathBuilder.f(8.0f);
                        pathBuilder.d(0.55f, 0.0f, 1.0f, 0.45f, 1.0f, 1.0f);
                        pathBuilder.k(-0.45f, 1.0f, -1.0f, 1.0f);
                        pathBuilder.b();
                        pathBuilder.i(16.0f, 9.0f);
                        pathBuilder.g(8.0f, 9.0f);
                        pathBuilder.d(-0.55f, 0.0f, -1.0f, -0.45f, -1.0f, -1.0f);
                        pathBuilder.k(0.45f, -1.0f, 1.0f, -1.0f);
                        pathBuilder.f(8.0f);
                        pathBuilder.d(0.55f, 0.0f, 1.0f, 0.45f, 1.0f, 1.0f);
                        pathBuilder.k(-0.45f, 1.0f, -1.0f, 1.0f);
                        pathBuilder.b();
                        builder.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", pathBuilder.a);
                        imageVector = builder.d();
                        AssignmentKt.a = imageVector;
                    }
                    ImageVector imageVector2 = imageVector;
                    long c5 = ColorKt.c(4280586316L);
                    GapComposer gapComposer5 = gapComposer;
                    boolean f2 = gapComposer5.f(function12);
                    Object K7 = gapComposer5.K();
                    if (!f2) {
                        obj3 = obj4;
                        break;
                    } else {
                        obj3 = obj4;
                    }
                    K7 = new b8(function12, 10);
                    gapComposer5.g0(K7);
                    PeerScreenKt.a(imageVector2, c5, "Paste", "Send copied text, links, and files", this.k, (Function0) K7, gapComposer5, 3504, 0);
                    ImageVector imageVector3 = PhotoKt.a;
                    if (imageVector3 == null) {
                        ImageVector.Builder builder2 = new ImageVector.Builder("Rounded.Photo", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                        int i3 = VectorKt.a;
                        SolidColor solidColor2 = new SolidColor(Color.b);
                        PathBuilder pathBuilder2 = new PathBuilder();
                        pathBuilder2.i(21.0f, 19.0f);
                        pathBuilder2.l(5.0f);
                        pathBuilder2.d(0.0f, -1.1f, -0.9f, -2.0f, -2.0f, -2.0f);
                        pathBuilder2.e(5.0f);
                        pathBuilder2.d(-1.1f, 0.0f, -2.0f, 0.9f, -2.0f, 2.0f);
                        pathBuilder2.m(14.0f);
                        pathBuilder2.d(0.0f, 1.1f, 0.9f, 2.0f, 2.0f, 2.0f);
                        pathBuilder2.f(14.0f);
                        pathBuilder2.d(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
                        pathBuilder2.b();
                        pathBuilder2.i(8.9f, 13.98f);
                        pathBuilder2.h(2.1f, 2.53f);
                        pathBuilder2.h(3.1f, -3.99f);
                        pathBuilder2.d(0.2f, -0.26f, 0.6f, -0.26f, 0.8f, 0.01f);
                        pathBuilder2.h(3.51f, 4.68f);
                        pathBuilder2.d(0.25f, 0.33f, 0.01f, 0.8f, -0.4f, 0.8f);
                        pathBuilder2.e(6.02f);
                        pathBuilder2.d(-0.42f, 0.0f, -0.65f, -0.48f, -0.39f, -0.81f);
                        pathBuilder2.g(8.12f, 14.0f);
                        pathBuilder2.d(0.19f, -0.26f, 0.57f, -0.27f, 0.78f, -0.02f);
                        pathBuilder2.b();
                        builder2.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor2, null, "", pathBuilder2.a);
                        imageVector3 = builder2.d();
                        PhotoKt.a = imageVector3;
                    }
                    ImageVector imageVector4 = imageVector3;
                    long c6 = ColorKt.c(4290140645L);
                    boolean f3 = gapComposer5.f(function12);
                    Object K8 = gapComposer5.K();
                    if (f3 || K8 == obj3) {
                        K8 = new b8(function12, 11);
                        gapComposer5.g0(K8);
                    }
                    PeerScreenKt.a(imageVector4, c6, "Photos and videos", "Send media saved on this phone", false, (Function0) K8, gapComposer5, 3504, 16);
                    ImageVector imageVector5 = InsertDriveFileKt.a;
                    if (imageVector5 == null) {
                        ImageVector.Builder builder3 = new ImageVector.Builder("AutoMirrored.Rounded.InsertDriveFile", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, true, 96);
                        int i4 = VectorKt.a;
                        SolidColor solidColor3 = new SolidColor(Color.b);
                        PathBuilder pathBuilder3 = new PathBuilder();
                        pathBuilder3.i(6.0f, 2.0f);
                        pathBuilder3.d(-1.1f, 0.0f, -1.99f, 0.9f, -1.99f, 2.0f);
                        pathBuilder3.g(4.0f, 20.0f);
                        pathBuilder3.d(0.0f, 1.1f, 0.89f, 2.0f, 1.99f, 2.0f);
                        pathBuilder3.g(18.0f, 22.0f);
                        pathBuilder3.d(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
                        pathBuilder3.g(20.0f, 8.83f);
                        pathBuilder3.d(0.0f, -0.53f, -0.21f, -1.04f, -0.59f, -1.41f);
                        pathBuilder3.h(-4.83f, -4.83f);
                        pathBuilder3.d(-0.37f, -0.38f, -0.88f, -0.59f, -1.41f, -0.59f);
                        pathBuilder3.g(6.0f, 2.0f);
                        pathBuilder3.b();
                        pathBuilder3.i(13.0f, 8.0f);
                        pathBuilder3.g(13.0f, 3.5f);
                        pathBuilder3.g(18.5f, 9.0f);
                        pathBuilder3.g(14.0f, 9.0f);
                        pathBuilder3.d(-0.55f, 0.0f, -1.0f, -0.45f, -1.0f, -1.0f);
                        pathBuilder3.b();
                        builder3.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor3, null, "", pathBuilder3.a);
                        imageVector5 = builder3.d();
                        InsertDriveFileKt.a = imageVector5;
                    }
                    long c7 = ColorKt.c(4285816554L);
                    boolean f4 = gapComposer5.f(function12);
                    Object K9 = gapComposer5.K();
                    if (f4 || K9 == obj3) {
                        K9 = new b8(function12, 12);
                        gapComposer5.g0(K9);
                    }
                    PeerScreenKt.a(imageVector5, c7, "Files", "Send files saved by any app", false, (Function0) K9, gapComposer5, 3504, 16);
                    ImageVector a5 = FolderKt.a();
                    long c8 = ColorKt.c(4282284248L);
                    boolean f5 = gapComposer5.f(function12);
                    Object K10 = gapComposer5.K();
                    if (f5 || K10 == obj3) {
                        K10 = new b8(function12, 7);
                        gapComposer5.g0(K10);
                    }
                    PeerScreenKt.a(a5, c8, "Folder", "Send a folder and everything inside it", false, (Function0) K10, gapComposer5, 3504, 16);
                    GapComposer gapComposer6 = gapComposer5;
                    if (z4) {
                        gapComposer6.W(723895047);
                        ImageVector imageVector6 = CameraAltKt.a;
                        if (imageVector6 == null) {
                            ImageVector.Builder builder4 = new ImageVector.Builder("Rounded.CameraAlt", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                            int i5 = VectorKt.a;
                            long j = Color.b;
                            SolidColor solidColor4 = new SolidColor(j);
                            PathBuilder pathBuilder4 = new PathBuilder();
                            pathBuilder4.i(12.0f, 12.0f);
                            PathNode.RelativeMoveTo relativeMoveTo = new PathNode.RelativeMoveTo(-3.0f, 0.0f);
                            ArrayList arrayList = pathBuilder4.a;
                            arrayList.add(relativeMoveTo);
                            pathBuilder4.a(3.0f, 3.0f, 6.0f);
                            pathBuilder4.a(3.0f, 3.0f, -6.0f);
                            builder4.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor4, null, "", arrayList);
                            SolidColor solidColor5 = new SolidColor(j);
                            PathBuilder pathBuilder5 = new PathBuilder();
                            pathBuilder5.i(20.0f, 4.0f);
                            pathBuilder5.f(-3.17f);
                            pathBuilder5.h(-1.24f, -1.35f);
                            pathBuilder5.d(-0.37f, -0.41f, -0.91f, -0.65f, -1.47f, -0.65f);
                            pathBuilder5.g(9.88f, 2.0f);
                            pathBuilder5.d(-0.56f, 0.0f, -1.1f, 0.24f, -1.48f, 0.65f);
                            pathBuilder5.g(7.17f, 4.0f);
                            pathBuilder5.g(4.0f, 4.0f);
                            pathBuilder5.d(-1.1f, 0.0f, -2.0f, 0.9f, -2.0f, 2.0f);
                            pathBuilder5.m(12.0f);
                            pathBuilder5.d(0.0f, 1.1f, 0.9f, 2.0f, 2.0f, 2.0f);
                            pathBuilder5.f(16.0f);
                            pathBuilder5.d(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
                            pathBuilder5.g(22.0f, 6.0f);
                            pathBuilder5.d(0.0f, -1.1f, -0.9f, -2.0f, -2.0f, -2.0f);
                            pathBuilder5.b();
                            pathBuilder5.i(12.0f, 17.0f);
                            pathBuilder5.d(-2.76f, 0.0f, -5.0f, -2.24f, -5.0f, -5.0f);
                            pathBuilder5.k(2.24f, -5.0f, 5.0f, -5.0f);
                            pathBuilder5.k(5.0f, 2.24f, 5.0f, 5.0f);
                            pathBuilder5.k(-2.24f, 5.0f, -5.0f, 5.0f);
                            pathBuilder5.b();
                            builder4.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor5, null, "", pathBuilder5.a);
                            imageVector6 = builder4.d();
                            CameraAltKt.a = imageVector6;
                        }
                        ImageVector imageVector7 = imageVector6;
                        long c9 = ColorKt.c(4293340012L);
                        boolean f6 = gapComposer6.f(function12);
                        Object K11 = gapComposer6.K();
                        if (f6 || K11 == obj3) {
                            K11 = new b8(function12, 8);
                            gapComposer6.g0(K11);
                        }
                        PeerScreenKt.a(imageVector7, c9, "Camera", "Take and send a new photo", false, (Function0) K11, gapComposer6, 3504, 16);
                        gapComposer6 = gapComposer6;
                        gapComposer6.p(false);
                    } else {
                        gapComposer6.W(724284252);
                        gapComposer6.p(false);
                    }
                    ImageVector a6 = MusicNoteKt.a();
                    long c10 = ColorKt.c(4294599987L);
                    boolean f7 = gapComposer6.f(function12);
                    Object K12 = gapComposer6.K();
                    if (f7 || K12 == obj3) {
                        K12 = new b8(function12, 9);
                        gapComposer6.g0(K12);
                    }
                    GapComposer gapComposer7 = gapComposer6;
                    PeerScreenKt.a(a6, c10, "Audio", "Send audio saved on this phone", false, (Function0) K12, gapComposer7, 3504, 16);
                    gapComposer7.p(true);
                    gapComposer7.p(true);
                    return unit;
                }
                gapComposer4.Q();
                return unit;
        }
    }

    public /* synthetic */ i9(Object obj, Object obj2, boolean z, boolean z2, int i) {
        this.j = i;
        this.m = obj;
        this.n = obj2;
        this.k = z;
        this.l = z2;
    }
}

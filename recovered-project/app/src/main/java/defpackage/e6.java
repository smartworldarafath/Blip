package defpackage;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.material.icons.automirrored.rounded.ArrowBackKt;
import androidx.compose.material.icons.rounded.AlternateEmailKt;
import androidx.compose.material.icons.rounded.DeleteForeverKt;
import androidx.compose.material.icons.rounded.EditKt;
import androidx.compose.material.icons.rounded.FolderKt;
import androidx.compose.material.icons.rounded.ForumKt;
import androidx.compose.material.icons.rounded.MailKt;
import androidx.compose.material.icons.rounded.NotificationsKt;
import androidx.compose.material.icons.rounded.SearchKt;
import androidx.compose.material.icons.rounded.VerifiedKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.CompositionLocalMapKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKindKt;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.coroutines.CombinedContext;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import net.blip.android.HardwareInfoAndroid;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.settings.SettingsComposablesKt;
import net.blip.libblip.Device_DerivedKt;
import net.blip.libblip.HardwareInfo;
import net.blip.shared.PlatformTextKt;
import net.blip.shared.ProvideSharedCompositionLocalsKt;
import net.blip.shared.Strings;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e6 implements Function2 {
    public final /* synthetic */ int j;

    public /* synthetic */ e6(int i) {
        this.j = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [androidx.compose.runtime.collection.MutableVector] */
    private final Object d(Object obj, Object obj2) {
        CompositionLocalMap compositionLocalMap = (CompositionLocalMap) obj2;
        LayoutNode layoutNode = (LayoutNode) ((ComposeUiNode) obj);
        layoutNode.K = compositionLocalMap;
        NodeChain nodeChain = layoutNode.O;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.h;
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = (PersistentCompositionLocalHashMap) compositionLocalMap;
        persistentCompositionLocalHashMap.getClass();
        layoutNode.d0((Density) CompositionLocalMapKt.a(persistentCompositionLocalHashMap, staticProvidableCompositionLocal));
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap2 = (PersistentCompositionLocalHashMap) compositionLocalMap;
        LayoutDirection layoutDirection = (LayoutDirection) CompositionLocalMapKt.a(persistentCompositionLocalHashMap2, CompositionLocalsKt.n);
        if (layoutNode.I != layoutDirection) {
            layoutNode.I = layoutDirection;
            layoutNode.I();
            LayoutNode w = layoutNode.w();
            if (w != null) {
                w.G();
            } else {
                Owner owner = layoutNode.w;
                if (owner != null) {
                    ((AndroidComposeView) owner).invalidate();
                }
            }
            layoutNode.H();
            for (Modifier.Node node = nodeChain.f; node != null; node = node.o) {
                node.W();
            }
        }
        layoutNode.i0((ViewConfiguration) CompositionLocalMapKt.a(persistentCompositionLocalHashMap2, CompositionLocalsKt.t));
        Modifier.Node node2 = nodeChain.f;
        if ((node2.m & 32768) != 0) {
            while (node2 != null) {
                if ((node2.l & 32768) != 0) {
                    DelegatingNode delegatingNode = node2;
                    ?? r1 = 0;
                    while (delegatingNode != 0) {
                        if (delegatingNode instanceof CompositionLocalConsumerModifierNode) {
                            Modifier.Node node3 = ((Modifier.Node) ((CompositionLocalConsumerModifierNode) delegatingNode)).j;
                            if (node3.w) {
                                NodeKindKt.c(node3);
                            } else {
                                node3.s = true;
                            }
                        } else if ((delegatingNode.l & 32768) != 0 && (delegatingNode instanceof DelegatingNode)) {
                            Modifier.Node node4 = delegatingNode.y;
                            int i = 0;
                            delegatingNode = delegatingNode;
                            r1 = r1;
                            while (node4 != null) {
                                if ((node4.l & 32768) != 0) {
                                    i++;
                                    r1 = r1;
                                    if (i == 1) {
                                        delegatingNode = node4;
                                    } else {
                                        if (r1 == 0) {
                                            r1 = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (delegatingNode != 0) {
                                            r1.b(delegatingNode);
                                            delegatingNode = 0;
                                        }
                                        r1.b(node4);
                                    }
                                }
                                node4 = node4.o;
                                delegatingNode = delegatingNode;
                                r1 = r1;
                            }
                            if (i == 1) {
                            }
                        }
                        delegatingNode = DelegatableNodeKt.b(r1);
                    }
                }
                if ((node2.m & 32768) == 0) {
                    break;
                }
                node2 = node2.o;
            }
        }
        return Unit.a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        int i;
        int i2;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        CombinedContext combinedContext;
        int i3 = this.j;
        boolean z13 = false;
        Unit unit = Unit.a;
        switch (i3) {
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
                    SettingsComposablesKt.c(EditKt.a(), null, gapComposer, 0, 2);
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
                    ImageVector imageVector = DeleteForeverKt.a;
                    if (imageVector == null) {
                        ImageVector.Builder builder = new ImageVector.Builder("Rounded.DeleteForever", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                        int i4 = VectorKt.a;
                        SolidColor solidColor = new SolidColor(Color.b);
                        PathBuilder pathBuilder = new PathBuilder();
                        pathBuilder.i(6.0f, 19.0f);
                        pathBuilder.d(0.0f, 1.1f, 0.9f, 2.0f, 2.0f, 2.0f);
                        pathBuilder.f(8.0f);
                        pathBuilder.d(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
                        pathBuilder.l(7.0f);
                        pathBuilder.e(6.0f);
                        pathBuilder.l(19.0f);
                        pathBuilder.b();
                        pathBuilder.i(9.17f, 12.59f);
                        pathBuilder.d(-0.39f, -0.39f, -0.39f, -1.02f, 0.0f, -1.41f);
                        pathBuilder.d(0.39f, -0.39f, 1.02f, -0.39f, 1.41f, 0.0f);
                        pathBuilder.g(12.0f, 12.59f);
                        pathBuilder.h(1.41f, -1.41f);
                        pathBuilder.d(0.39f, -0.39f, 1.02f, -0.39f, 1.41f, 0.0f);
                        pathBuilder.k(0.39f, 1.02f, 0.0f, 1.41f);
                        pathBuilder.g(13.41f, 14.0f);
                        pathBuilder.h(1.41f, 1.41f);
                        pathBuilder.d(0.39f, 0.39f, 0.39f, 1.02f, 0.0f, 1.41f);
                        pathBuilder.k(-1.02f, 0.39f, -1.41f, 0.0f);
                        pathBuilder.g(12.0f, 15.41f);
                        pathBuilder.h(-1.41f, 1.41f);
                        pathBuilder.d(-0.39f, 0.39f, -1.02f, 0.39f, -1.41f, 0.0f);
                        pathBuilder.d(-0.39f, -0.39f, -0.39f, -1.02f, 0.0f, -1.41f);
                        pathBuilder.g(10.59f, 14.0f);
                        pathBuilder.g(9.17f, 12.59f);
                        pathBuilder.b();
                        pathBuilder.i(18.0f, 4.0f);
                        pathBuilder.f(-2.5f);
                        pathBuilder.h(-0.71f, -0.71f);
                        pathBuilder.c(14.61f, 3.11f, 14.35f, 3.0f, 14.09f, 3.0f);
                        pathBuilder.e(9.91f);
                        pathBuilder.d(-0.26f, 0.0f, -0.52f, 0.11f, -0.7f, 0.29f);
                        pathBuilder.g(8.5f, 4.0f);
                        pathBuilder.e(6.0f);
                        pathBuilder.c(5.45f, 4.0f, 5.0f, 4.45f, 5.0f, 5.0f);
                        pathBuilder.k(0.45f, 1.0f, 1.0f, 1.0f);
                        pathBuilder.f(12.0f);
                        pathBuilder.d(0.55f, 0.0f, 1.0f, -0.45f, 1.0f, -1.0f);
                        pathBuilder.j(18.55f, 4.0f, 18.0f, 4.0f);
                        pathBuilder.b();
                        ImageVector.Builder.c(builder, pathBuilder.a, solidColor);
                        imageVector = builder.d();
                        DeleteForeverKt.a = imageVector;
                    }
                    SettingsComposablesKt.c(imageVector, new Color(((AndroidColors) gapComposer2.j(AndroidColorsKt.a)).g), gapComposer2, 0, 0);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z3)) {
                    SettingsComposablesKt.b(null, gapComposer3, 48);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if ((intValue4 & 3) != 2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.N(intValue4 & 1, z4)) {
                    SettingsComposablesKt.c(EditKt.a(), null, gapComposer4, 0, 2);
                } else {
                    gapComposer4.Q();
                }
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if ((intValue5 & 3) != 2) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.N(intValue5 & 1, z5)) {
                    SettingsComposablesKt.c(SearchKt.a(), null, gapComposer5, 0, 2);
                } else {
                    gapComposer5.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if ((intValue6 & 3) != 2) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.N(intValue6 & 1, z6)) {
                    ScreenLockupKt.c(null, "Settings", null, gapComposer6, 48, 5);
                } else {
                    gapComposer6.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Composer composer7 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if ((intValue7 & 3) != 2) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (gapComposer7.N(intValue7 & 1, z7)) {
                    ImageVector imageVector2 = ForumKt.a;
                    if (imageVector2 != null) {
                        i2 = 2;
                        i = 0;
                    } else {
                        ImageVector.Builder builder2 = new ImageVector.Builder("Rounded.Forum", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                        int i5 = VectorKt.a;
                        SolidColor solidColor2 = new SolidColor(Color.b);
                        PathBuilder pathBuilder2 = new PathBuilder();
                        pathBuilder2.i(20.0f, 6.0f);
                        pathBuilder2.f(-1.0f);
                        pathBuilder2.m(8.0f);
                        pathBuilder2.d(0.0f, 0.55f, -0.45f, 1.0f, -1.0f, 1.0f);
                        pathBuilder2.g(6.0f, 15.0f);
                        pathBuilder2.m(1.0f);
                        pathBuilder2.d(0.0f, 1.1f, 0.9f, 2.0f, 2.0f, 2.0f);
                        pathBuilder2.f(10.0f);
                        pathBuilder2.h(4.0f, 4.0f);
                        pathBuilder2.g(22.0f, 8.0f);
                        pathBuilder2.d(0.0f, -1.1f, -0.9f, -2.0f, -2.0f, -2.0f);
                        pathBuilder2.b();
                        pathBuilder2.i(17.0f, 11.0f);
                        pathBuilder2.g(17.0f, 4.0f);
                        pathBuilder2.d(0.0f, -1.1f, -0.9f, -2.0f, -2.0f, -2.0f);
                        pathBuilder2.g(4.0f, 2.0f);
                        pathBuilder2.d(-1.1f, 0.0f, -2.0f, 0.9f, -2.0f, 2.0f);
                        pathBuilder2.m(13.0f);
                        pathBuilder2.h(4.0f, -4.0f);
                        pathBuilder2.f(9.0f);
                        pathBuilder2.d(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
                        pathBuilder2.b();
                        ImageVector.Builder.c(builder2, pathBuilder2.a, solidColor2);
                        imageVector2 = builder2.d();
                        ForumKt.a = imageVector2;
                        i = 0;
                        i2 = 2;
                    }
                    SettingsComposablesKt.c(imageVector2, null, gapComposer7, i, i2);
                } else {
                    gapComposer7.Q();
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Composer composer8 = (Composer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                if ((intValue8 & 3) != 2) {
                    z13 = true;
                }
                GapComposer gapComposer8 = (GapComposer) composer8;
                if (gapComposer8.N(intValue8 & 1, z13)) {
                    ListRowKt.c(null, "Discord", "Join our community!", 0L, gapComposer8, 432, 9);
                } else {
                    gapComposer8.Q();
                }
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Composer composer9 = (Composer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                if ((intValue9 & 3) != 2) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                GapComposer gapComposer9 = (GapComposer) composer9;
                if (gapComposer9.N(intValue9 & 1, z8)) {
                    ImageVector imageVector3 = AlternateEmailKt.a;
                    if (imageVector3 == null) {
                        ImageVector.Builder builder3 = new ImageVector.Builder("Rounded.AlternateEmail", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                        int i6 = VectorKt.a;
                        SolidColor solidColor3 = new SolidColor(Color.b);
                        PathBuilder pathBuilder3 = new PathBuilder();
                        pathBuilder3.i(12.72f, 2.03f);
                        pathBuilder3.c(6.63f, 1.6f, 1.6f, 6.63f, 2.03f, 12.72f);
                        pathBuilder3.c(2.39f, 18.01f, 7.01f, 22.0f, 12.31f, 22.0f);
                        pathBuilder3.e(16.0f);
                        pathBuilder3.d(0.55f, 0.0f, 1.0f, -0.45f, 1.0f, -1.0f);
                        pathBuilder3.k(-0.45f, -1.0f, -1.0f, -1.0f);
                        pathBuilder3.f(-3.67f);
                        pathBuilder3.d(-3.73f, 0.0f, -7.15f, -2.42f, -8.08f, -6.03f);
                        pathBuilder3.d(-1.49f, -5.8f, 3.91f, -11.21f, 9.71f, -9.71f);
                        pathBuilder3.c(17.58f, 5.18f, 20.0f, 8.6f, 20.0f, 12.33f);
                        pathBuilder3.m(1.1f);
                        pathBuilder3.d(0.0f, 0.79f, -0.71f, 1.57f, -1.5f, 1.57f);
                        pathBuilder3.k(-1.5f, -0.78f, -1.5f, -1.57f);
                        pathBuilder3.m(-1.25f);
                        pathBuilder3.d(0.0f, -2.51f, -1.78f, -4.77f, -4.26f, -5.12f);
                        pathBuilder3.d(-3.4f, -0.49f, -6.27f, 2.45f, -5.66f, 5.87f);
                        pathBuilder3.d(0.34f, 1.91f, 1.83f, 3.49f, 3.72f, 3.94f);
                        pathBuilder3.d(1.84f, 0.43f, 3.59f, -0.16f, 4.74f, -1.33f);
                        pathBuilder3.d(0.89f, 1.22f, 2.67f, 1.86f, 4.3f, 1.21f);
                        pathBuilder3.d(1.34f, -0.53f, 2.16f, -1.9f, 2.16f, -3.34f);
                        pathBuilder3.m(-1.09f);
                        pathBuilder3.d(0.0f, -5.31f, -3.99f, -9.93f, -9.28f, -10.29f);
                        pathBuilder3.b();
                        pathBuilder3.i(12.0f, 15.0f);
                        pathBuilder3.d(-1.66f, 0.0f, -3.0f, -1.34f, -3.0f, -3.0f);
                        pathBuilder3.k(1.34f, -3.0f, 3.0f, -3.0f);
                        pathBuilder3.k(3.0f, 1.34f, 3.0f, 3.0f);
                        pathBuilder3.k(-1.34f, 3.0f, -3.0f, 3.0f);
                        pathBuilder3.b();
                        ImageVector.Builder.c(builder3, pathBuilder3.a, solidColor3);
                        imageVector3 = builder3.d();
                        AlternateEmailKt.a = imageVector3;
                    }
                    SettingsComposablesKt.c(imageVector3, null, gapComposer9, 0, 2);
                } else {
                    gapComposer9.Q();
                }
                return unit;
            case KeyModifiers.a /* 9 */:
                Composer composer10 = (Composer) obj;
                int intValue10 = ((Integer) obj2).intValue();
                if ((intValue10 & 3) != 2) {
                    z13 = true;
                }
                GapComposer gapComposer10 = (GapComposer) composer10;
                if (gapComposer10.N(intValue10 & 1, z13)) {
                    ListRowKt.c(null, "Twitter", jb.f("@", Strings.c), 0L, gapComposer10, 48, 9);
                } else {
                    gapComposer10.Q();
                }
                return unit;
            case KeyModifiers.b /* 10 */:
                Composer composer11 = (Composer) obj;
                int intValue11 = ((Integer) obj2).intValue();
                if ((intValue11 & 3) != 2) {
                    z13 = true;
                }
                GapComposer gapComposer11 = (GapComposer) composer11;
                if (gapComposer11.N(intValue11 & 1, z13)) {
                    HardwareInfo hardwareInfo = (HardwareInfo) gapComposer11.j(ProvideSharedCompositionLocalsKt.c);
                    hardwareInfo.getClass();
                    PlatformTextKt.c(q.i("Sign out on this ", Device_DerivedKt.b(((HardwareInfoAndroid) hardwareInfo).g), "?"), null, TextStyle.a(((AndroidTextStyles) gapComposer11.j(AndroidTextStylesKt.a)).b, 0L, TextUnitKt.d(18), FontWeight.t, 0L, 0L, null, LineBreak.c, 14680057), 0, false, 0, 0, null, gapComposer11, 0, 506);
                } else {
                    gapComposer11.Q();
                }
                return unit;
            case 11:
                Composer composer12 = (Composer) obj;
                int intValue12 = ((Integer) obj2).intValue();
                if ((intValue12 & 3) != 2) {
                    z13 = true;
                }
                GapComposer gapComposer12 = (GapComposer) composer12;
                if (gapComposer12.N(intValue12 & 1, z13)) {
                    HardwareInfo hardwareInfo2 = (HardwareInfo) gapComposer12.j(ProvideSharedCompositionLocalsKt.c);
                    hardwareInfo2.getClass();
                    PlatformTextKt.c(q.i("You won't be able to send items to this ", Device_DerivedKt.b(((HardwareInfoAndroid) hardwareInfo2).g), " anymore"), null, TextStyle.a(((AndroidTextStyles) gapComposer12.j(AndroidTextStylesKt.a)).b, 0L, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777213), 0, false, 0, 0, null, gapComposer12, 0, 506);
                } else {
                    gapComposer12.Q();
                }
                return unit;
            case KeyModifiers.c /* 12 */:
                Composer composer13 = (Composer) obj;
                int intValue13 = ((Integer) obj2).intValue();
                if ((intValue13 & 3) != 2) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                GapComposer gapComposer13 = (GapComposer) composer13;
                if (gapComposer13.N(intValue13 & 1, z9)) {
                    ImageVector imageVector4 = NotificationsKt.a;
                    if (imageVector4 == null) {
                        ImageVector.Builder builder4 = new ImageVector.Builder("Rounded.Notifications", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                        int i7 = VectorKt.a;
                        SolidColor solidColor4 = new SolidColor(Color.b);
                        PathBuilder pathBuilder4 = new PathBuilder();
                        pathBuilder4.i(12.0f, 22.0f);
                        pathBuilder4.d(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
                        pathBuilder4.f(-4.0f);
                        pathBuilder4.d(0.0f, 1.1f, 0.89f, 2.0f, 2.0f, 2.0f);
                        pathBuilder4.b();
                        pathBuilder4.i(18.0f, 16.0f);
                        pathBuilder4.m(-5.0f);
                        pathBuilder4.d(0.0f, -3.07f, -1.64f, -5.64f, -4.5f, -6.32f);
                        pathBuilder4.g(13.5f, 4.0f);
                        pathBuilder4.d(0.0f, -0.83f, -0.67f, -1.5f, -1.5f, -1.5f);
                        pathBuilder4.k(-1.5f, 0.67f, -1.5f, 1.5f);
                        pathBuilder4.m(0.68f);
                        pathBuilder4.c(7.63f, 5.36f, 6.0f, 7.92f, 6.0f, 11.0f);
                        pathBuilder4.m(5.0f);
                        pathBuilder4.h(-1.29f, 1.29f);
                        pathBuilder4.d(-0.63f, 0.63f, -0.19f, 1.71f, 0.7f, 1.71f);
                        pathBuilder4.f(13.17f);
                        pathBuilder4.d(0.89f, 0.0f, 1.34f, -1.08f, 0.71f, -1.71f);
                        pathBuilder4.g(18.0f, 16.0f);
                        pathBuilder4.b();
                        ImageVector.Builder.c(builder4, pathBuilder4.a, solidColor4);
                        imageVector4 = builder4.d();
                        NotificationsKt.a = imageVector4;
                    }
                    SettingsComposablesKt.c(imageVector4, null, gapComposer13, 0, 2);
                } else {
                    gapComposer13.Q();
                }
                return unit;
            case 13:
                Composer composer14 = (Composer) obj;
                int intValue14 = ((Integer) obj2).intValue();
                if ((intValue14 & 3) != 2) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                GapComposer gapComposer14 = (GapComposer) composer14;
                if (gapComposer14.N(intValue14 & 1, z10)) {
                    ImageVector imageVector5 = VerifiedKt.a;
                    if (imageVector5 == null) {
                        ImageVector.Builder builder5 = new ImageVector.Builder("Rounded.Verified", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                        int i8 = VectorKt.a;
                        SolidColor solidColor5 = new SolidColor(Color.b);
                        PathBuilder pathBuilder5 = new PathBuilder();
                        pathBuilder5.i(23.0f, 12.0f);
                        pathBuilder5.h(-2.44f, -2.79f);
                        pathBuilder5.h(0.34f, -3.69f);
                        pathBuilder5.h(-3.61f, -0.82f);
                        pathBuilder5.g(15.4f, 1.5f);
                        pathBuilder5.g(12.0f, 2.96f);
                        pathBuilder5.g(8.6f, 1.5f);
                        pathBuilder5.g(6.71f, 4.69f);
                        pathBuilder5.g(3.1f, 5.5f);
                        pathBuilder5.g(3.44f, 9.2f);
                        pathBuilder5.g(1.0f, 12.0f);
                        pathBuilder5.h(2.44f, 2.79f);
                        pathBuilder5.h(-0.34f, 3.7f);
                        pathBuilder5.h(3.61f, 0.82f);
                        pathBuilder5.g(8.6f, 22.5f);
                        pathBuilder5.h(3.4f, -1.47f);
                        pathBuilder5.h(3.4f, 1.46f);
                        pathBuilder5.h(1.89f, -3.19f);
                        pathBuilder5.h(3.61f, -0.82f);
                        pathBuilder5.h(-0.34f, -3.69f);
                        pathBuilder5.g(23.0f, 12.0f);
                        pathBuilder5.b();
                        pathBuilder5.i(9.38f, 16.01f);
                        pathBuilder5.g(7.0f, 13.61f);
                        pathBuilder5.d(-0.39f, -0.39f, -0.39f, -1.02f, 0.0f, -1.41f);
                        pathBuilder5.h(0.07f, -0.07f);
                        pathBuilder5.d(0.39f, -0.39f, 1.03f, -0.39f, 1.42f, 0.0f);
                        pathBuilder5.h(1.61f, 1.62f);
                        pathBuilder5.h(5.15f, -5.16f);
                        pathBuilder5.d(0.39f, -0.39f, 1.03f, -0.39f, 1.42f, 0.0f);
                        pathBuilder5.h(0.07f, 0.07f);
                        pathBuilder5.d(0.39f, 0.39f, 0.39f, 1.02f, 0.0f, 1.41f);
                        pathBuilder5.h(-5.92f, 5.94f);
                        pathBuilder5.c(10.41f, 16.4f, 9.78f, 16.4f, 9.38f, 16.01f);
                        pathBuilder5.b();
                        ImageVector.Builder.c(builder5, pathBuilder5.a, solidColor5);
                        imageVector5 = builder5.d();
                        VerifiedKt.a = imageVector5;
                    }
                    SettingsComposablesKt.c(imageVector5, null, gapComposer14, 0, 2);
                } else {
                    gapComposer14.Q();
                }
                return unit;
            case 14:
                Composer composer15 = (Composer) obj;
                int intValue15 = ((Integer) obj2).intValue();
                if ((intValue15 & 3) != 2) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                GapComposer gapComposer15 = (GapComposer) composer15;
                if (gapComposer15.N(intValue15 & 1, z11)) {
                    SettingsComposablesKt.c(FolderKt.a(), null, gapComposer15, 0, 2);
                } else {
                    gapComposer15.Q();
                }
                return unit;
            case 15:
                Composer composer16 = (Composer) obj;
                int intValue16 = ((Integer) obj2).intValue();
                if ((intValue16 & 3) != 2) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                GapComposer gapComposer16 = (GapComposer) composer16;
                if (gapComposer16.N(intValue16 & 1, z12)) {
                    ImageVector imageVector6 = MailKt.a;
                    if (imageVector6 == null) {
                        ImageVector.Builder builder6 = new ImageVector.Builder("Rounded.Mail", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                        int i9 = VectorKt.a;
                        SolidColor solidColor6 = new SolidColor(Color.b);
                        PathBuilder pathBuilder6 = new PathBuilder();
                        pathBuilder6.i(20.0f, 4.0f);
                        pathBuilder6.g(4.0f, 4.0f);
                        pathBuilder6.d(-1.1f, 0.0f, -2.0f, 0.9f, -2.0f, 2.0f);
                        pathBuilder6.m(12.0f);
                        pathBuilder6.d(0.0f, 1.1f, 0.9f, 2.0f, 2.0f, 2.0f);
                        pathBuilder6.f(16.0f);
                        pathBuilder6.d(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
                        pathBuilder6.g(22.0f, 6.0f);
                        pathBuilder6.d(0.0f, -1.1f, -0.9f, -2.0f, -2.0f, -2.0f);
                        pathBuilder6.b();
                        pathBuilder6.i(19.6f, 8.25f);
                        pathBuilder6.h(-6.54f, 4.09f);
                        pathBuilder6.d(-0.65f, 0.41f, -1.47f, 0.41f, -2.12f, 0.0f);
                        pathBuilder6.g(4.4f, 8.25f);
                        pathBuilder6.d(-0.25f, -0.16f, -0.4f, -0.43f, -0.4f, -0.72f);
                        pathBuilder6.d(0.0f, -0.67f, 0.73f, -1.07f, 1.3f, -0.72f);
                        pathBuilder6.g(12.0f, 11.0f);
                        pathBuilder6.h(6.7f, -4.19f);
                        pathBuilder6.d(0.57f, -0.35f, 1.3f, 0.05f, 1.3f, 0.72f);
                        pathBuilder6.d(0.0f, 0.29f, -0.15f, 0.56f, -0.4f, 0.72f);
                        pathBuilder6.b();
                        ImageVector.Builder.c(builder6, pathBuilder6.a, solidColor6);
                        imageVector6 = builder6.d();
                        MailKt.a = imageVector6;
                    }
                    SettingsComposablesKt.c(imageVector6, null, gapComposer16, 0, 2);
                } else {
                    gapComposer16.Q();
                }
                return unit;
            case 16:
                Composer composer17 = (Composer) obj;
                int intValue17 = ((Integer) obj2).intValue();
                if ((intValue17 & 3) != 2) {
                    z13 = true;
                }
                GapComposer gapComposer17 = (GapComposer) composer17;
                if (gapComposer17.N(intValue17 & 1, z13)) {
                    ListRowKt.c(null, "Email", Strings.e, 0L, gapComposer17, 48, 9);
                } else {
                    gapComposer17.Q();
                }
                return unit;
            case 17:
                Composer composer18 = (Composer) obj;
                int intValue18 = ((Integer) obj2).intValue();
                if ((intValue18 & 3) != 2) {
                    z13 = true;
                }
                GapComposer gapComposer18 = (GapComposer) composer18;
                if (!gapComposer18.N(intValue18 & 1, z13)) {
                    gapComposer18.Q();
                }
                return unit;
            case 18:
                Composer composer19 = (Composer) obj;
                int intValue19 = ((Integer) obj2).intValue();
                if ((intValue19 & 3) != 2) {
                    z13 = true;
                }
                GapComposer gapComposer19 = (GapComposer) composer19;
                if (gapComposer19.N(intValue19 & 1, z13)) {
                    ImageKt.b(ArrowBackKt.a(), "Back", null, ColorFilter.Companion.a(((AndroidColors) gapComposer19.j(AndroidColorsKt.a)).d), gapComposer19, 48, 60);
                } else {
                    gapComposer19.Q();
                }
                return unit;
            case 19:
                Composer composer20 = (Composer) obj;
                int intValue20 = ((Integer) obj2).intValue();
                if ((intValue20 & 3) != 2) {
                    z13 = true;
                }
                GapComposer gapComposer20 = (GapComposer) composer20;
                if (gapComposer20.N(intValue20 & 1, z13)) {
                    PlatformTextKt.c("The transfer will be removed from Blip. The files will remain on your device unless you choose to delete them too.", null, TextStyle.a(((AndroidTextStyles) gapComposer20.j(AndroidTextStylesKt.a)).b, 0L, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777213), 0, false, 0, 0, null, gapComposer20, 6, 506);
                } else {
                    gapComposer20.Q();
                }
                return unit;
            case 20:
                Composer composer21 = (Composer) obj;
                int intValue21 = ((Integer) obj2).intValue();
                if ((intValue21 & 3) != 2) {
                    z13 = true;
                }
                GapComposer gapComposer21 = (GapComposer) composer21;
                if (gapComposer21.N(intValue21 & 1, z13)) {
                    PlatformTextKt.c("Delete all transfers?", null, TextStyle.a(((AndroidTextStyles) gapComposer21.j(AndroidTextStylesKt.a)).a, 0L, TextUnitKt.d(18), FontWeight.t, 0L, 0L, null, LineBreak.c, 14680057), 0, false, 0, 0, null, gapComposer21, 6, 506);
                } else {
                    gapComposer21.Q();
                }
                return unit;
            case 21:
                Composer composer22 = (Composer) obj;
                int intValue22 = ((Integer) obj2).intValue();
                if ((intValue22 & 3) != 2) {
                    z13 = true;
                }
                GapComposer gapComposer22 = (GapComposer) composer22;
                if (gapComposer22.N(intValue22 & 1, z13)) {
                    PlatformTextKt.c("All transfers will be removed from Blip. The files will remain on your device unless you choose to delete them too.", null, TextStyle.a(((AndroidTextStyles) gapComposer22.j(AndroidTextStylesKt.a)).b, 0L, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777213), 0, false, 0, 0, null, gapComposer22, 6, 506);
                } else {
                    gapComposer22.Q();
                }
                return unit;
            case 22:
                Composer composer23 = (Composer) obj;
                int intValue23 = ((Integer) obj2).intValue();
                if ((intValue23 & 3) != 2) {
                    z13 = true;
                }
                GapComposer gapComposer23 = (GapComposer) composer23;
                if (!gapComposer23.N(intValue23 & 1, z13)) {
                    gapComposer23.Q();
                }
                return unit;
            case 23:
                ((LayoutNode) ((ComposeUiNode) obj)).h0((Modifier) obj2);
                return unit;
            case 24:
                return d(obj, obj2);
            case 25:
                ((LayoutNode) ((ComposeUiNode) obj)).g0((MeasurePolicy) obj2);
                return unit;
            case 26:
                ((Integer) obj2).getClass();
                ((LayoutNode) ((ComposeUiNode) obj)).getClass();
                return unit;
            case 27:
                CoroutineContext coroutineContext = (CoroutineContext) obj;
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                coroutineContext.getClass();
                element.getClass();
                CoroutineContext g0 = coroutineContext.g0(element.getKey());
                EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.j;
                if (g0 != emptyCoroutineContext) {
                    ContinuationInterceptor.Key key = ContinuationInterceptor.Key.j;
                    ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) g0.v(key);
                    if (continuationInterceptor == null) {
                        combinedContext = new CombinedContext(element, g0);
                    } else {
                        CoroutineContext g02 = g0.g0(key);
                        if (g02 == emptyCoroutineContext) {
                            return new CombinedContext(continuationInterceptor, element);
                        }
                        combinedContext = new CombinedContext(continuationInterceptor, new CombinedContext(element, g02));
                    }
                    return combinedContext;
                }
                return element;
            case 28:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                return bool;
            default:
                return ((CoroutineContext) obj).A((CoroutineContext.Element) obj2);
        }
    }
}

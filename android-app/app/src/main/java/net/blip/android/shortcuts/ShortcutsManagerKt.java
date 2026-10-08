package net.blip.android.shortcuts;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.os.Build;
import androidx.activity.ComponentActivity;
import androidx.collection.ArraySet;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ScaleKt;
import androidx.compose.ui.graphics.AndroidImageBitmap_androidKt;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.DpKt;
import androidx.core.app.Person;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutManagerCompat;
import androidx.core.graphics.drawable.IconCompat;
import defpackage.ma;
import defpackage.u2;
import io.sentry.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.collections.SetsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.blip.android.MainActivity;
import net.blip.android.R;
import net.blip.android.ui.androidtheme.AndroidAvatarTheme;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.util.CaptureComposableKt;
import net.blip.android.ui.util.CaptureScope;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerId;
import net.blip.libblip.PeerId_DerivedKt;
import net.blip.libblip.User;
import net.blip.libblip.User_DerivedKt;
import net.blip.shared.AvatarKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ShortcutsManagerKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /* JADX WARN: Type inference failed for: r0v26, types: [androidx.core.app.Person$Builder, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(ComponentActivity componentActivity, final Peer peer, ContinuationImpl continuationImpl) {
        ContinuationImpl continuationImpl2;
        int i;
        Bitmap bitmap;
        ComponentActivity componentActivity2;
        Exception exc;
        boolean z;
        IconCompat a;
        if (continuationImpl instanceof ShortcutsManagerKt$createPeerShortcut$1) {
            ShortcutsManagerKt$createPeerShortcut$1 shortcutsManagerKt$createPeerShortcut$1 = (ShortcutsManagerKt$createPeerShortcut$1) continuationImpl;
            int i2 = shortcutsManagerKt$createPeerShortcut$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                shortcutsManagerKt$createPeerShortcut$1.p = i2 - Integer.MIN_VALUE;
                continuationImpl2 = shortcutsManagerKt$createPeerShortcut$1;
                ShortcutsManagerKt$createPeerShortcut$1 shortcutsManagerKt$createPeerShortcut$12 = continuationImpl2;
                Object obj = shortcutsManagerKt$createPeerShortcut$12.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = shortcutsManagerKt$createPeerShortcut$12.p;
                bitmap = null;
                if (i == 0) {
                    if (i == 1) {
                        peer = shortcutsManagerKt$createPeerShortcut$12.n;
                        componentActivity = shortcutsManagerKt$createPeerShortcut$12.m;
                        try {
                            ResultKt.b(obj);
                        } catch (Exception e) {
                            e = e;
                            exc = e;
                            if (!componentActivity.isFinishing() || componentActivity.isDestroyed()) {
                                return null;
                            }
                            if (!(exc instanceof CancellationException)) {
                                LoggerKt.a.getClass();
                                Logger.d("ShortcutsManager", "capturing avatar composable: " + exc, new Pair[0]);
                                ShortcutInfoCompat.Builder builder = new ShortcutInfoCompat.Builder(componentActivity, PeerId_DerivedKt.b(peer.c()));
                                String b = peer.b();
                                ShortcutInfoCompat shortcutInfoCompat = builder.a;
                                shortcutInfoCompat.e = b;
                                shortcutInfoCompat.l = true;
                                if (bitmap != null) {
                                }
                                shortcutInfoCompat.h = a;
                                Set e2 = SetsKt.e("net.blip.android.SHARE_TARGET");
                                ArraySet arraySet = new ArraySet(0);
                                arraySet.addAll(e2);
                                shortcutInfoCompat.j = arraySet;
                                ?? obj2 = new Object();
                                obj2.a = peer.b();
                                obj2.e = peer instanceof Peer.Device;
                                shortcutInfoCompat.i = new Person[]{obj2.a()};
                                String str = MainActivity.G;
                                PeerId c = peer.c();
                                componentActivity.getClass();
                                Intent intent = new Intent(componentActivity, (Class<?>) MainActivity.class);
                                intent.setAction(MainActivity.H);
                                intent.addFlags(603979776);
                                intent.putExtra(MainActivity.J, PeerId_DerivedKt.b(c));
                                shortcutInfoCompat.c = new Intent[]{intent};
                                return builder.a();
                            }
                            throw exc;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    try {
                        long a2 = DpKt.a(128.0f, 128.0f);
                        Density b2 = DensityKt.b(componentActivity.getResources().getDisplayMetrics().density);
                        try {
                            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AvatarKt.a;
                            try {
                                peer.getClass();
                            } catch (Exception e3) {
                                e = e3;
                                componentActivity2 = componentActivity;
                            }
                            try {
                                if (peer instanceof Peer.User) {
                                    User user = ((Peer.User) peer).j;
                                    user.getClass();
                                    z = User_DerivedKt.b(user);
                                } else {
                                    z = false;
                                }
                                boolean z2 = !z;
                                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(-2102337497, true, new Function3() { // from class: net.blip.android.shortcuts.b
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object f(Object obj3, Object obj4, Object obj5) {
                                        boolean z3;
                                        boolean z4;
                                        boolean z5;
                                        boolean h;
                                        int i3;
                                        CaptureScope captureScope = (CaptureScope) obj3;
                                        Composer composer = (Composer) obj4;
                                        int intValue = ((Integer) obj5).intValue();
                                        captureScope.getClass();
                                        if ((intValue & 6) == 0) {
                                            if ((intValue & 8) == 0) {
                                                h = ((GapComposer) composer).f(captureScope);
                                            } else {
                                                h = ((GapComposer) composer).h(captureScope);
                                            }
                                            if (h) {
                                                i3 = 4;
                                            } else {
                                                i3 = 2;
                                            }
                                            intValue |= i3;
                                        }
                                        if ((intValue & 19) != 18) {
                                            z3 = true;
                                        } else {
                                            z3 = false;
                                        }
                                        GapComposer gapComposer = (GapComposer) composer;
                                        boolean N = gapComposer.N(intValue & 1, z3);
                                        Unit unit = Unit.a;
                                        if (N) {
                                            int i4 = intValue & 14;
                                            if (i4 != 4 && ((intValue & 8) == 0 || !gapComposer.h(captureScope))) {
                                                z4 = false;
                                            } else {
                                                z4 = true;
                                            }
                                            Object K = gapComposer.K();
                                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                            if (z4 || K == composer$Companion$Empty$1) {
                                                K = new ShortcutsManagerKt$createPeerShortcut$avatar$1$1$1(captureScope, null);
                                                gapComposer.g0(K);
                                            }
                                            EffectsKt.e(gapComposer, unit, (Function2) K);
                                            AndroidColors androidColors = AndroidColorsKt.b;
                                            AndroidAvatarTheme androidAvatarTheme = new AndroidAvatarTheme(androidColors.b);
                                            Modifier.Companion companion = Modifier.Companion.b;
                                            Modifier b3 = BackgroundKt.b(SizeKt.c(companion, 1.0f), androidColors.b, RoundedCornerShapeKt.a);
                                            MeasurePolicy d = BoxKt.d(Alignment.Companion.e, false);
                                            int hashCode = Long.hashCode(gapComposer.T);
                                            PersistentCompositionLocalMap l = gapComposer.l();
                                            Modifier c2 = ComposedModifierKt.c(gapComposer, b3);
                                            ComposeUiNode.b.getClass();
                                            gapComposer.Z();
                                            if (gapComposer.S) {
                                                gapComposer.k(LayoutNode.b0);
                                            } else {
                                                gapComposer.j0();
                                            }
                                            Updater.c(gapComposer, d, ComposeUiNode.Companion.d);
                                            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
                                            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                                            Updater.b(gapComposer);
                                            Updater.c(gapComposer, c2, ComposeUiNode.Companion.b);
                                            Modifier a3 = ScaleKt.a(SizeKt.c(companion, 1.0f), 1.0f / ((AdaptiveIconDrawable.getExtraInsetFraction() * 2.0f) + 1.0f));
                                            if (i4 != 4 && ((intValue & 8) == 0 || !gapComposer.h(captureScope))) {
                                                z5 = false;
                                            } else {
                                                z5 = true;
                                            }
                                            Object K2 = gapComposer.K();
                                            if (z5 || K2 == composer$Companion$Empty$1) {
                                                K2 = new ma(25, captureScope);
                                                gapComposer.g0(K2);
                                            }
                                            AvatarKt.d(a3, androidAvatarTheme, Peer.this, (Function1) K2, gapComposer, 0, 0);
                                            gapComposer.p(true);
                                            return unit;
                                        }
                                        gapComposer.Q();
                                        return unit;
                                    }
                                });
                                shortcutsManagerKt$createPeerShortcut$12.m = componentActivity;
                                shortcutsManagerKt$createPeerShortcut$12.n = peer;
                                shortcutsManagerKt$createPeerShortcut$12.p = 1;
                                componentActivity2 = componentActivity;
                                try {
                                    obj = CaptureComposableKt.a(componentActivity2, a2, b2, z2, composableLambdaImpl, shortcutsManagerKt$createPeerShortcut$12);
                                    if (obj == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                    componentActivity = componentActivity2;
                                } catch (Exception e4) {
                                    e = e4;
                                    exc = e;
                                    componentActivity = componentActivity2;
                                    if (!componentActivity.isFinishing()) {
                                    }
                                    return null;
                                }
                            } catch (Exception e5) {
                                exc = e5;
                                componentActivity2 = componentActivity;
                                componentActivity = componentActivity2;
                                if (!componentActivity.isFinishing()) {
                                }
                                return null;
                            }
                        } catch (Exception e6) {
                            componentActivity2 = componentActivity;
                            exc = e6;
                        }
                    } catch (Exception e7) {
                        e = e7;
                        exc = e;
                        if (!componentActivity.isFinishing()) {
                        }
                        return null;
                    }
                }
                bitmap = AndroidImageBitmap_androidKt.a((ImageBitmap) obj);
                ShortcutInfoCompat.Builder builder2 = new ShortcutInfoCompat.Builder(componentActivity, PeerId_DerivedKt.b(peer.c()));
                String b3 = peer.b();
                ShortcutInfoCompat shortcutInfoCompat2 = builder2.a;
                shortcutInfoCompat2.e = b3;
                shortcutInfoCompat2.l = true;
                if (bitmap != null) {
                    a = new IconCompat(5);
                    a.b = bitmap;
                } else {
                    PorterDuff.Mode mode = IconCompat.k;
                    componentActivity.getClass();
                    a = IconCompat.a(componentActivity.getResources(), componentActivity.getPackageName(), R.drawable.ic_avatar_shortcuts_fallback);
                }
                shortcutInfoCompat2.h = a;
                Set e22 = SetsKt.e("net.blip.android.SHARE_TARGET");
                ArraySet arraySet2 = new ArraySet(0);
                arraySet2.addAll(e22);
                shortcutInfoCompat2.j = arraySet2;
                ?? obj22 = new Object();
                obj22.a = peer.b();
                obj22.e = peer instanceof Peer.Device;
                shortcutInfoCompat2.i = new Person[]{obj22.a()};
                String str2 = MainActivity.G;
                PeerId c2 = peer.c();
                componentActivity.getClass();
                Intent intent2 = new Intent(componentActivity, (Class<?>) MainActivity.class);
                intent2.setAction(MainActivity.H);
                intent2.addFlags(603979776);
                intent2.putExtra(MainActivity.J, PeerId_DerivedKt.b(c2));
                shortcutInfoCompat2.c = new Intent[]{intent2};
                return builder2.a();
            }
        }
        continuationImpl2 = new ContinuationImpl(continuationImpl);
        ShortcutsManagerKt$createPeerShortcut$1 shortcutsManagerKt$createPeerShortcut$122 = continuationImpl2;
        Object obj3 = shortcutsManagerKt$createPeerShortcut$122.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = shortcutsManagerKt$createPeerShortcut$122.p;
        bitmap = null;
        if (i == 0) {
        }
        bitmap = AndroidImageBitmap_androidKt.a((ImageBitmap) obj3);
        ShortcutInfoCompat.Builder builder22 = new ShortcutInfoCompat.Builder(componentActivity, PeerId_DerivedKt.b(peer.c()));
        String b32 = peer.b();
        ShortcutInfoCompat shortcutInfoCompat22 = builder22.a;
        shortcutInfoCompat22.e = b32;
        shortcutInfoCompat22.l = true;
        if (bitmap != null) {
        }
        shortcutInfoCompat22.h = a;
        Set e222 = SetsKt.e("net.blip.android.SHARE_TARGET");
        ArraySet arraySet22 = new ArraySet(0);
        arraySet22.addAll(e222);
        shortcutInfoCompat22.j = arraySet22;
        ?? obj222 = new Object();
        obj222.a = peer.b();
        obj222.e = peer instanceof Peer.Device;
        shortcutInfoCompat22.i = new Person[]{obj222.a()};
        String str22 = MainActivity.G;
        PeerId c22 = peer.c();
        componentActivity.getClass();
        Intent intent22 = new Intent(componentActivity, (Class<?>) MainActivity.class);
        intent22.setAction(MainActivity.H);
        intent22.addFlags(603979776);
        intent22.putExtra(MainActivity.J, PeerId_DerivedKt.b(c22));
        shortcutInfoCompat22.c = new Intent[]{intent22};
        return builder22.a();
    }

    public static final void b(Context context, PeerId peerId) {
        context.getClass();
        peerId.getClass();
        c(context, CollectionsKt.B(PeerId_DerivedKt.b(peerId)));
    }

    public static final void c(Context context, List list) {
        if (!list.isEmpty()) {
            context.getSharedPreferences("peer_shortcuts", 0).edit().putStringSet("disabled_shortcut_ids", SetsKt.d(d(context), list)).apply();
            if (Build.VERSION.SDK_INT >= 30) {
                ((ShortcutManager) context.getSystemService(ShortcutManager.class)).removeLongLivedShortcuts(list);
                ShortcutManagerCompat.b(context).getClass();
                Iterator it = ((ArrayList) ShortcutManagerCompat.a(context)).iterator();
                if (it.hasNext()) {
                    it.next().getClass();
                    d.i();
                    return;
                }
            } else {
                ((ShortcutManager) context.getSystemService(ShortcutManager.class)).removeDynamicShortcuts(list);
                ShortcutManagerCompat.b(context).getClass();
                Iterator it2 = ((ArrayList) ShortcutManagerCompat.a(context)).iterator();
                if (it2.hasNext()) {
                    it2.next().getClass();
                    d.i();
                    return;
                }
            }
            ((ShortcutManager) context.getSystemService(ShortcutManager.class)).disableShortcuts(list, "This peer is no longer available");
            ShortcutManagerCompat.b(context).getClass();
            Iterator it3 = ((ArrayList) ShortcutManagerCompat.a(context)).iterator();
            if (!it3.hasNext()) {
                return;
            }
            it3.next().getClass();
            d.i();
        }
    }

    public static final Set d(Context context) {
        Set set;
        SharedPreferences sharedPreferences = context.getSharedPreferences("peer_shortcuts", 0);
        EmptySet emptySet = EmptySet.j;
        Set<String> stringSet = sharedPreferences.getStringSet("disabled_shortcut_ids", emptySet);
        if (stringSet != null) {
            set = CollectionsKt.a0(stringSet);
        } else {
            set = null;
        }
        if (set == null) {
            return emptySet;
        }
        return set;
    }

    public static final void e(Context context, PeerId peerId) {
        context.getClass();
        peerId.getClass();
        String b = PeerId_DerivedKt.b(peerId);
        ((ShortcutManager) context.getSystemService(ShortcutManager.class)).reportShortcutUsed(b);
        Iterator it = ((ArrayList) ShortcutManagerCompat.a(context)).iterator();
        if (!it.hasNext()) {
            return;
        }
        if (it.next() != null) {
            d.i();
        } else {
            Collections.singletonList(b);
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object f(ComponentActivity componentActivity, Peer peer, ContinuationImpl continuationImpl) {
        ShortcutsManagerKt$requestPinPeerShortcut$1 shortcutsManagerKt$requestPinPeerShortcut$1;
        int i;
        ShortcutInfoCompat shortcutInfoCompat;
        if (continuationImpl instanceof ShortcutsManagerKt$requestPinPeerShortcut$1) {
            ShortcutsManagerKt$requestPinPeerShortcut$1 shortcutsManagerKt$requestPinPeerShortcut$12 = (ShortcutsManagerKt$requestPinPeerShortcut$1) continuationImpl;
            int i2 = shortcutsManagerKt$requestPinPeerShortcut$12.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                shortcutsManagerKt$requestPinPeerShortcut$12.o = i2 - Integer.MIN_VALUE;
                shortcutsManagerKt$requestPinPeerShortcut$1 = shortcutsManagerKt$requestPinPeerShortcut$12;
                Object obj = shortcutsManagerKt$requestPinPeerShortcut$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = shortcutsManagerKt$requestPinPeerShortcut$1.o;
                if (i == 0) {
                    if (i == 1) {
                        componentActivity = shortcutsManagerKt$requestPinPeerShortcut$1.m;
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    componentActivity.getClass();
                    if (!((ShortcutManager) componentActivity.getSystemService(ShortcutManager.class)).isRequestPinShortcutSupported()) {
                        return Boolean.FALSE;
                    }
                    shortcutsManagerKt$requestPinPeerShortcut$1.m = componentActivity;
                    shortcutsManagerKt$requestPinPeerShortcut$1.o = 1;
                    obj = a(componentActivity, peer, shortcutsManagerKt$requestPinPeerShortcut$1);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                shortcutInfoCompat = (ShortcutInfoCompat) obj;
                if (shortcutInfoCompat != null) {
                    return Boolean.FALSE;
                }
                String str = shortcutInfoCompat.b;
                str.getClass();
                Set d = d(componentActivity);
                if (d.contains(str)) {
                    componentActivity.getSharedPreferences("peer_shortcuts", 0).edit().putStringSet("disabled_shortcut_ids", SetsKt.b(d, str)).apply();
                    List B = CollectionsKt.B(shortcutInfoCompat);
                    List c = ShortcutManagerCompat.c(B);
                    ArrayList arrayList = new ArrayList(B.size());
                    Iterator it = c.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((ShortcutInfoCompat) it.next()).b);
                    }
                    ((ShortcutManager) componentActivity.getSystemService(ShortcutManager.class)).enableShortcuts(arrayList);
                    ShortcutManagerCompat.b(componentActivity).getClass();
                    Iterator it2 = ((ArrayList) ShortcutManagerCompat.a(componentActivity)).iterator();
                    if (it2.hasNext()) {
                        it2.next().getClass();
                        d.i();
                        return null;
                    }
                }
                return Boolean.valueOf(((ShortcutManager) componentActivity.getSystemService(ShortcutManager.class)).requestPinShortcut(shortcutInfoCompat.b(), null));
            }
        }
        shortcutsManagerKt$requestPinPeerShortcut$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = shortcutsManagerKt$requestPinPeerShortcut$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = shortcutsManagerKt$requestPinPeerShortcut$1.o;
        if (i == 0) {
        }
        shortcutInfoCompat = (ShortcutInfoCompat) obj2;
        if (shortcutInfoCompat != null) {
        }
    }
}

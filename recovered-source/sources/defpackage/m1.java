package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.core.net.UriKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import net.blip.android.intents.OutboundIntent;
import net.blip.android.shortcuts.PinPeerShortcutMenuItemKt;
import net.blip.android.ui.gallery.ComposableSingletons$GalleryScreenKt;
import net.blip.android.ui.gallery.GalleryPagerContentKt;
import net.blip.android.ui.peerpicker.ComposableSingletons$AndroidPeerPickerListItemsKt;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerPickerContent;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class m1 implements Function4 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;

    public /* synthetic */ m1(List list, PagerState pagerState, Context context, MutableState mutableState) {
        this.j = 2;
        this.k = list;
        this.l = pagerState;
        this.n = context;
        this.m = mutableState;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object j(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        Object obj5;
        final List list;
        Function0 function0;
        boolean z6;
        boolean z7;
        boolean z8;
        int i = this.j;
        Unit unit = Unit.a;
        Object obj6 = Composer.Companion.a;
        int i2 = 16;
        Object obj7 = this.m;
        Object obj8 = this.n;
        Object obj9 = this.l;
        Object obj10 = this.k;
        boolean z9 = true;
        switch (i) {
            case 0:
                Peer peer = (Peer) obj10;
                PeerPickerContent peerPickerContent = (PeerPickerContent) obj9;
                MutableState mutableState = (MutableState) obj7;
                MutableState mutableState2 = (MutableState) obj8;
                Function0 function02 = (Function0) obj2;
                Composer composer = (Composer) obj3;
                int intValue = ((Integer) obj4).intValue();
                ((ColumnScope) obj).getClass();
                function02.getClass();
                if ((intValue & 48) == 0) {
                    if (((GapComposer) composer).h(function02)) {
                        i2 = 32;
                    }
                    intValue |= i2;
                }
                if ((intValue & 145) != 144) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    int i3 = intValue & 112;
                    PinPeerShortcutMenuItemKt.a(peer, function02, gapComposer, i3);
                    if (!(peer instanceof Peer.Device) && !(peerPickerContent instanceof PeerPickerContent.Overview)) {
                        gapComposer.W(1692459315);
                        gapComposer.p(false);
                    } else {
                        gapComposer.W(1692221948);
                        if (i3 == 32) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        Object K = gapComposer.K();
                        if (z2 || K == obj6) {
                            K = new k1(function02, mutableState, 0);
                            gapComposer.g0(K);
                        }
                        AndroidMenu_androidKt.b((Function0) K, null, false, null, ComposableSingletons$AndroidPeerPickerListItemsKt.a, gapComposer, 196608, 30);
                        gapComposer.p(false);
                    }
                    if (peer instanceof Peer.User) {
                        gapComposer.W(1692496670);
                        if (i3 == 32) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        Object K2 = gapComposer.K();
                        if (z3 || K2 == obj6) {
                            K2 = new k1(function02, mutableState2, 1);
                            gapComposer.g0(K2);
                        }
                        AndroidMenu_androidKt.b((Function0) K2, null, false, null, ComposableSingletons$AndroidPeerPickerListItemsKt.b, gapComposer, 196608, 30);
                        gapComposer.p(false);
                    } else {
                        gapComposer.W(1692732115);
                        gapComposer.p(false);
                    }
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                final Context context = (Context) obj10;
                final List list2 = (List) obj9;
                final PagerState pagerState = (PagerState) obj7;
                Function1 function1 = (Function1) obj8;
                final Function0 function03 = (Function0) obj2;
                Composer composer2 = (Composer) obj3;
                int intValue2 = ((Integer) obj4).intValue();
                ((ColumnScope) obj).getClass();
                function03.getClass();
                if ((intValue2 & 48) == 0) {
                    if (((GapComposer) composer2).h(function03)) {
                        i2 = 32;
                    }
                    intValue2 |= i2;
                }
                if ((intValue2 & 145) != 144) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z4)) {
                    boolean h = gapComposer2.h(context) | gapComposer2.h(list2) | gapComposer2.f(pagerState);
                    int i4 = intValue2 & 112;
                    if (i4 == 32) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    boolean z10 = h | z5;
                    Object K3 = gapComposer2.K();
                    if (!z10 && K3 != obj6) {
                        function0 = function03;
                        obj5 = K3;
                        list = list2;
                    } else {
                        final int i5 = 0;
                        obj5 = new Function0() { // from class: t8
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                int i6 = i5;
                                Unit unit2 = Unit.a;
                                Function0 function04 = function03;
                                PagerState pagerState2 = pagerState;
                                List list3 = list2;
                                Context context2 = context;
                                switch (i6) {
                                    case 0:
                                        OutboundIntent.b(context2, (Uri) list3.get(pagerState2.d.a()));
                                        function04.a();
                                        return unit2;
                                    default:
                                        Uri uri = (Uri) list3.get(pagerState2.d.a());
                                        context2.getClass();
                                        uri.getClass();
                                        Uri a = OutboundIntent.a(context2, UriKt.a(uri));
                                        if (a != null) {
                                            String type = context2.getContentResolver().getType(uri);
                                            Intent intent = new Intent();
                                            intent.setAction("android.intent.action.SEND");
                                            intent.putExtra("android.intent.extra.STREAM", a);
                                            intent.addFlags(1);
                                            if (type == null) {
                                                type = "*/*";
                                            }
                                            intent.setType(type);
                                            context2.startActivity(Intent.createChooser(intent, null));
                                        }
                                        function04.a();
                                        return unit2;
                                }
                            }
                        };
                        list = list2;
                        function0 = function03;
                        gapComposer2.g0(obj5);
                    }
                    AndroidMenu_androidKt.b((Function0) obj5, null, false, null, ComposableSingletons$GalleryScreenKt.a, gapComposer2, 196608, 30);
                    boolean f = gapComposer2.f(function1) | gapComposer2.h(list) | gapComposer2.f(pagerState);
                    if (i4 == 32) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    boolean z11 = f | z6;
                    Object K4 = gapComposer2.K();
                    if (z11 || K4 == obj6) {
                        K4 = new p1(function1, list, pagerState, function0);
                        gapComposer2.g0(K4);
                    }
                    AndroidMenu_androidKt.b((Function0) K4, null, false, null, ComposableSingletons$GalleryScreenKt.b, gapComposer2, 196608, 30);
                    boolean h2 = gapComposer2.h(context) | gapComposer2.h(list) | gapComposer2.f(pagerState);
                    if (i4 != 32) {
                        z9 = false;
                    }
                    boolean z12 = h2 | z9;
                    Object K5 = gapComposer2.K();
                    if (z12 || K5 == obj6) {
                        final int i6 = 1;
                        final Function0 function04 = function0;
                        Object obj11 = new Function0() { // from class: t8
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                int i62 = i6;
                                Unit unit2 = Unit.a;
                                Function0 function042 = function04;
                                PagerState pagerState2 = pagerState;
                                List list3 = list;
                                Context context2 = context;
                                switch (i62) {
                                    case 0:
                                        OutboundIntent.b(context2, (Uri) list3.get(pagerState2.d.a()));
                                        function042.a();
                                        return unit2;
                                    default:
                                        Uri uri = (Uri) list3.get(pagerState2.d.a());
                                        context2.getClass();
                                        uri.getClass();
                                        Uri a = OutboundIntent.a(context2, UriKt.a(uri));
                                        if (a != null) {
                                            String type = context2.getContentResolver().getType(uri);
                                            Intent intent = new Intent();
                                            intent.setAction("android.intent.action.SEND");
                                            intent.putExtra("android.intent.extra.STREAM", a);
                                            intent.addFlags(1);
                                            if (type == null) {
                                                type = "*/*";
                                            }
                                            intent.setType(type);
                                            context2.startActivity(Intent.createChooser(intent, null));
                                        }
                                        function042.a();
                                        return unit2;
                                }
                            }
                        };
                        gapComposer2.g0(obj11);
                        K5 = obj11;
                    }
                    AndroidMenu_androidKt.b((Function0) K5, null, false, null, ComposableSingletons$GalleryScreenKt.c, gapComposer2, 196608, 30);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            default:
                List list3 = (List) obj10;
                PagerState pagerState2 = (PagerState) obj9;
                Object obj12 = (Context) obj8;
                MutableState mutableState3 = (MutableState) obj7;
                int intValue3 = ((Integer) obj2).intValue();
                Composer composer3 = (Composer) obj3;
                int intValue4 = ((Integer) obj4).intValue();
                ((PagerScope) obj).getClass();
                if ((intValue4 & 48) == 0) {
                    if (((GapComposer) composer3).d(intValue3)) {
                        i2 = 32;
                    }
                    intValue4 |= i2;
                }
                if ((intValue4 & 145) != 144) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue4 & 1, z7)) {
                    MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
                    int hashCode = Long.hashCode(gapComposer3.T);
                    PersistentCompositionLocalMap l = gapComposer3.l();
                    Modifier c = ComposedModifierKt.c(gapComposer3, Modifier.Companion.b);
                    ComposeUiNode.b.getClass();
                    gapComposer3.Z();
                    if (gapComposer3.S) {
                        gapComposer3.k(LayoutNode.b0);
                    } else {
                        gapComposer3.j0();
                    }
                    Updater.c(gapComposer3, d, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer3, l, ComposeUiNode.Companion.c);
                    Updater.c(gapComposer3, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                    Updater.b(gapComposer3);
                    Updater.c(gapComposer3, c, ComposeUiNode.Companion.b);
                    Uri uri = (Uri) list3.get(intValue3);
                    boolean a = pagerState2.k.a();
                    if (intValue3 == pagerState2.d.a()) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    Object K6 = gapComposer3.K();
                    if (K6 == obj6) {
                        K6 = new o1(mutableState3, 7);
                        gapComposer3.g0(K6);
                    }
                    Function0 function05 = (Function0) K6;
                    boolean h3 = gapComposer3.h(obj12) | gapComposer3.h(uri);
                    Object K7 = gapComposer3.K();
                    if (h3 || K7 == obj6) {
                        K7 = new p0(17, obj12, uri);
                        gapComposer3.g0(K7);
                    }
                    GalleryPagerContentKt.a(uri, a, z8, function05, (Function0) K7, gapComposer3, 3072);
                    gapComposer3.p(true);
                } else {
                    gapComposer3.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ m1(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
        this.m = obj3;
        this.n = obj4;
    }
}

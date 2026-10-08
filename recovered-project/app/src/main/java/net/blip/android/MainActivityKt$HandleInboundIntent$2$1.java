package net.blip.android;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavController;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.shortcuts.ShortcutsManagerKt;
import net.blip.android.ui.home.TransferGridKt;
import net.blip.android.ui.util.SuspendingPermissionState;
import net.blip.libblip.Flavor;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.PathUtil;
import net.blip.libblip.PeerId;
import net.blip.libblip.PeerId_DerivedKt;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.Users_DerivedKt;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.ScratchFileWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.MainActivityKt$HandleInboundIntent$2$1", f = "MainActivity.kt", l = {232, 247, 269}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class MainActivityKt$HandleInboundIntent$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public PeerId n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ Intent q;
    public final /* synthetic */ Activity r;
    public final /* synthetic */ State s;
    public final /* synthetic */ NavController t;
    public final /* synthetic */ Flavor u;
    public final /* synthetic */ Function1 v;
    public final /* synthetic */ SuspendingPermissionState w;
    public final /* synthetic */ Function0 x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivityKt$HandleInboundIntent$2$1(Intent intent, Activity activity, State state, NavController navController, Flavor flavor, Function1 function1, SuspendingPermissionState suspendingPermissionState, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.q = intent;
        this.r = activity;
        this.s = state;
        this.t = navController;
        this.u = flavor;
        this.v = function1;
        this.w = suspendingPermissionState;
        this.x = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((MainActivityKt$HandleInboundIntent$2$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        MainActivityKt$HandleInboundIntent$2$1 mainActivityKt$HandleInboundIntent$2$1 = new MainActivityKt$HandleInboundIntent$2$1(this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, continuation);
        mainActivityKt$HandleInboundIntent$2$1.p = obj;
        return mainActivityKt$HandleInboundIntent$2$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x025d, code lost:
    
        if (net.blip.android.MainActivityKt.c(r1, r2, r3, r18, r5, r0, r7, r8, r25) != r10) goto L97;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0173 A[Catch: Exception -> 0x0028, CancellationException -> 0x028f, TryCatch #1 {CancellationException -> 0x028f, blocks: (B:7:0x0023, B:14:0x0034, B:17:0x015e, B:18:0x016d, B:20:0x0173, B:22:0x0185, B:24:0x018b, B:27:0x019f, B:31:0x0199, B:33:0x01a3, B:34:0x01de, B:36:0x01e4, B:40:0x020d, B:41:0x01ff, B:48:0x0217, B:51:0x0249, B:59:0x0044, B:62:0x0054, B:64:0x005c, B:66:0x006e, B:70:0x007c, B:72:0x008b, B:75:0x0096, B:77:0x00b0, B:78:0x00bc, B:79:0x00bd, B:82:0x00c7, B:84:0x00cf, B:86:0x00d9, B:87:0x00e9, B:90:0x00f7, B:91:0x0103, B:92:0x0104, B:94:0x010c, B:96:0x0114, B:98:0x011c, B:100:0x0124, B:102:0x0132, B:104:0x013c), top: B:2:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01e4 A[Catch: Exception -> 0x0028, CancellationException -> 0x028f, TryCatch #1 {CancellationException -> 0x028f, blocks: (B:7:0x0023, B:14:0x0034, B:17:0x015e, B:18:0x016d, B:20:0x0173, B:22:0x0185, B:24:0x018b, B:27:0x019f, B:31:0x0199, B:33:0x01a3, B:34:0x01de, B:36:0x01e4, B:40:0x020d, B:41:0x01ff, B:48:0x0217, B:51:0x0249, B:59:0x0044, B:62:0x0054, B:64:0x005c, B:66:0x006e, B:70:0x007c, B:72:0x008b, B:75:0x0096, B:77:0x00b0, B:78:0x00bc, B:79:0x00bd, B:82:0x00c7, B:84:0x00cf, B:86:0x00d9, B:87:0x00e9, B:90:0x00f7, B:91:0x0103, B:92:0x0104, B:94:0x010c, B:96:0x0114, B:98:0x011c, B:100:0x0124, B:102:0x0132, B:104:0x013c), top: B:2:0x001b }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Activity activity;
        PeerId peerId;
        Object b;
        String str;
        Iterator it;
        String str2;
        String uri;
        CoroutineScope coroutineScope = (CoroutineScope) this.p;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        Unit unit = Unit.a;
        boolean z = true;
        Activity activity2 = this.r;
        Intent intent = this.q;
        try {
            try {
            } catch (CancellationException e) {
                throw e;
            }
        } catch (Exception e2) {
            e = e2;
            activity = activity2;
        }
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    peerId = this.n;
                    ResultKt.b(obj);
                    b = obj;
                    PeerId peerId2 = peerId;
                    List<Uri> list = (List) b;
                    ArrayList d = MainActivityKt.d(activity2, intent, list);
                    ArrayList arrayList = new ArrayList();
                    for (Uri uri2 : list) {
                        if (Intrinsics.a(uri2.getScheme(), "file")) {
                            uri = uri2.getPath();
                            if (uri == null) {
                                LoggerKt.a.getClass();
                                Logger.e("inbound shared file missing path", new Pair[0]);
                                uri = null;
                            }
                        } else {
                            uri = uri2.toString();
                        }
                        if (uri != null) {
                            arrayList.add(uri);
                        }
                    }
                    Logger logger = LoggerKt.a;
                    Pair pair = new Pair("intent_action", intent.getAction());
                    Pair pair2 = new Pair("intent_type", intent.getType());
                    Pair pair3 = new Pair("result_count", new Integer(arrayList.size()));
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.m(arrayList, 10));
                    it = arrayList.iterator();
                    while (it.hasNext()) {
                        Iterator it2 = it;
                        String str3 = (String) it.next();
                        Logger logger2 = logger;
                        PeerId peerId3 = peerId2;
                        if (StringsKt.J(str3, "content://", true)) {
                            str2 = "content_uri";
                        } else if (StringsKt.J(str3, "file://", true)) {
                            str2 = "file_uri";
                        } else {
                            str2 = "path";
                        }
                        arrayList2.add(str2);
                        logger = logger2;
                        it = it2;
                        peerId2 = peerId3;
                    }
                    PeerId peerId4 = peerId2;
                    Pair[] pairArr = {pair, pair2, pair3, new Pair("location_types", CollectionsKt.y(CollectionsKt.Q(CollectionsKt.X(CollectionsKt.Z(arrayList2))), ",", null, null, null, 62))};
                    logger.getClass();
                    Logger.h("received inbound share from intent", pairArr);
                    State state = this.s;
                    Function1 function1 = this.v;
                    activity = activity2;
                    try {
                        SuspendingPermissionState suspendingPermissionState = this.w;
                        NavController navController = this.t;
                        this.p = null;
                        this.n = null;
                        this.o = 3;
                    } catch (Exception e3) {
                        e = e3;
                        Logger logger3 = LoggerKt.a;
                        Pair[] pairArr2 = {new Pair("origin", "inbound_intent"), new Pair("intent_action", intent.getAction())};
                        logger3.getClass();
                        Logger.f(e, pairArr2);
                        Toast.makeText(activity, "Unable to share this content", 0).show();
                        this.x.a();
                        return unit;
                    }
                }
            }
            ResultKt.b(obj);
            this.x.a();
            return unit;
        }
        ResultKt.b(obj);
        String action = intent.getAction();
        boolean a = Intrinsics.a(action, MainActivity.H);
        NavController navController2 = this.t;
        State state2 = this.s;
        if (a) {
            String stringExtra = intent.getStringExtra(MainActivity.J);
            if (stringExtra != null) {
                PeerId a2 = PeerId_DerivedKt.a(stringExtra);
                if (!ShortcutsManagerKt.d(activity2).contains(PeerId_DerivedKt.b(a2))) {
                    if (Users_DerivedKt.a(State_DerivedKt.d(state2), a2) == null) {
                        z = false;
                    }
                    if (z) {
                        NavController.b(navController2, "peer/".concat(PeerId_DerivedKt.b(a2)));
                    }
                }
                if (PeerId_DerivedKt.c(a2)) {
                    str = "person";
                } else {
                    str = "device";
                }
                Toast.makeText(activity2, "Selected " + str + " not found", 0).show();
            } else {
                LoggerKt.a.getClass();
                Logger.j("missing KEY_PEER_ID for ACTION_OPEN_PEER", new Pair[0]);
                throw null;
            }
        } else {
            boolean a3 = Intrinsics.a(action, MainActivity.G);
            Flavor flavor = this.u;
            if (a3) {
                String stringExtra2 = intent.getStringExtra(MainActivity.I);
                if (stringExtra2 != null) {
                    Transfer transfer = (Transfer) state2.B.get(stringExtra2);
                    if (transfer == null) {
                        LoggerKt.a.getClass();
                        Logger.e("inbound open gallery transfer not found: ".concat(stringExtra2), new Pair[0]);
                    } else {
                        this.p = null;
                        this.n = null;
                        this.o = 1;
                        if (TransferGridKt.b(activity2, navController2, transfer, flavor, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                } else {
                    LoggerKt.a.getClass();
                    Logger.j("missing KEY_TRANSFER_ID for ACTION_OPEN_GALLERY", new Pair[0]);
                    throw null;
                }
            } else if (Intrinsics.a(action, "android.intent.action.SEND") || Intrinsics.a(action, "android.intent.action.SEND_MULTIPLE")) {
                String stringExtra3 = intent.getStringExtra("android.intent.extra.shortcut.ID");
                if (stringExtra3 != null) {
                    peerId = PeerId_DerivedKt.a(stringExtra3);
                } else {
                    peerId = null;
                }
                if (peerId != null && ShortcutsManagerKt.d(activity2).contains(PeerId_DerivedKt.b(peerId))) {
                    Toast.makeText(activity2, "This person or device is no longer available", 0).show();
                    return unit;
                }
                ScratchFileWriter scratchFileWriter = new ScratchFileWriter(PathUtil.a(((FlavorAndroid) flavor).e, new String[]{"scratch"}));
                this.p = coroutineScope;
                this.n = peerId;
                this.o = 2;
                b = MainActivityKt.b(intent, scratchFileWriter, this);
                if (b == coroutineSingletons) {
                    return coroutineSingletons;
                }
                PeerId peerId22 = peerId;
                List<Uri> list2 = (List) b;
                ArrayList d2 = MainActivityKt.d(activity2, intent, list2);
                ArrayList arrayList3 = new ArrayList();
                while (r1.hasNext()) {
                }
                Logger logger4 = LoggerKt.a;
                Pair pair4 = new Pair("intent_action", intent.getAction());
                Pair pair22 = new Pair("intent_type", intent.getType());
                Pair pair32 = new Pair("result_count", new Integer(arrayList3.size()));
                ArrayList arrayList22 = new ArrayList(CollectionsKt.m(arrayList3, 10));
                it = arrayList3.iterator();
                while (it.hasNext()) {
                }
                PeerId peerId42 = peerId22;
                Pair[] pairArr3 = {pair4, pair22, pair32, new Pair("location_types", CollectionsKt.y(CollectionsKt.Q(CollectionsKt.X(CollectionsKt.Z(arrayList22))), ",", null, null, null, 62))};
                logger4.getClass();
                Logger.h("received inbound share from intent", pairArr3);
                State state3 = this.s;
                Function1 function12 = this.v;
                activity = activity2;
                SuspendingPermissionState suspendingPermissionState2 = this.w;
                NavController navController3 = this.t;
                this.p = null;
                this.n = null;
                this.o = 3;
            }
        }
        this.x.a();
        return unit;
    }
}

package net.blip.android;

import android.app.Activity;
import android.content.ClipData;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.widget.Toast;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.core.content.IntentCompat;
import androidx.navigation.NavController;
import com.google.accompanist.permissions.PermissionStatus;
import defpackage.c;
import defpackage.u2;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.IntIterator;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.RangesKt;
import net.blip.android.MainActivityKt;
import net.blip.android.ui.util.LaunchersKt;
import net.blip.android.ui.util.SuspendingPermissionState;
import net.blip.libblip.Core;
import net.blip.libblip.DispatcherKt;
import net.blip.libblip.Flavor;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.PeerId;
import net.blip.libblip.PeerId_DerivedKt;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.Users_DerivedKt;
import net.blip.libblip.frontend.State;
import net.blip.shared.InternetShortcut;
import net.blip.shared.InternetShortcutKt;
import net.blip.shared.ProvideSharedCompositionLocalsKt;
import net.blip.shared.ScratchFileKt;
import net.blip.shared.ScratchFileWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MainActivityKt {
    public static final void a(final Activity activity, final Intent intent, final NavController navController, final Function0 function0, Composer composer, final int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        RecomposeScopeImpl r;
        Function2 function2;
        Object mainActivityKt$HandleInboundIntent$2$1;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-658319304);
        if (gapComposer.h(activity)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i6 = i | i2;
        if (gapComposer.h(intent)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i7 = i6 | i3;
        if (gapComposer.h(navController)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i8 = i7 | i4;
        if (gapComposer.h(function0)) {
            i5 = 2048;
        } else {
            i5 = 1024;
        }
        int i9 = i8 | i5;
        boolean z2 = false;
        if ((i9 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i9 & 1, z)) {
            if (intent == null) {
                r = gapComposer.r();
                if (r != null) {
                    final int i10 = 0;
                    function2 = new Function2(activity, intent, navController, function0, i, i10) { // from class: xa
                        public final /* synthetic */ int j;
                        public final /* synthetic */ Activity k;
                        public final /* synthetic */ Intent l;
                        public final /* synthetic */ NavController m;
                        public final /* synthetic */ Function0 n;

                        {
                            this.j = i10;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            int i11 = this.j;
                            Unit unit = Unit.a;
                            switch (i11) {
                                case 0:
                                    ((Integer) obj2).getClass();
                                    int a = RecomposeScopeImplKt.a(1);
                                    MainActivityKt.a(this.k, this.l, this.m, this.n, (Composer) obj, a);
                                    return unit;
                                default:
                                    ((Integer) obj2).getClass();
                                    int a2 = RecomposeScopeImplKt.a(1);
                                    MainActivityKt.a(this.k, this.l, this.m, this.n, (Composer) obj, a2);
                                    return unit;
                            }
                        }
                    };
                    r.d = function2;
                }
                return;
            }
            SuspendingPermissionState a = LaunchersKt.a("android.permission.READ_EXTERNAL_STORAGE", gapComposer);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ProvideSharedCompositionLocalsKt.d;
            State b = ProvideSharedCompositionLocalsKt.b(dynamicProvidableCompositionLocal, gapComposer);
            c cVar = ((Core) gapComposer.j(dynamicProvidableCompositionLocal)).b;
            Flavor flavor = (Flavor) gapComposer.j(ProvideSharedCompositionLocalsKt.a);
            boolean h = gapComposer.h(intent) | gapComposer.h(activity) | gapComposer.h(b) | gapComposer.h(navController) | gapComposer.h(flavor) | gapComposer.f(cVar) | gapComposer.h(a);
            if ((i9 & 7168) == 2048) {
                z2 = true;
            }
            boolean z3 = h | z2;
            Object K = gapComposer.K();
            if (!z3 && K != Composer.Companion.a) {
                mainActivityKt$HandleInboundIntent$2$1 = K;
            } else {
                mainActivityKt$HandleInboundIntent$2$1 = new MainActivityKt$HandleInboundIntent$2$1(intent, activity, b, navController, flavor, cVar, a, function0, null);
                gapComposer.g0(mainActivityKt$HandleInboundIntent$2$1);
            }
            EffectsKt.e(gapComposer, intent, (Function2) mainActivityKt$HandleInboundIntent$2$1);
        } else {
            gapComposer.Q();
        }
        r = gapComposer.r();
        if (r != null) {
            final int i11 = 1;
            function2 = new Function2(activity, intent, navController, function0, i, i11) { // from class: xa
                public final /* synthetic */ int j;
                public final /* synthetic */ Activity k;
                public final /* synthetic */ Intent l;
                public final /* synthetic */ NavController m;
                public final /* synthetic */ Function0 n;

                {
                    this.j = i11;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    int i112 = this.j;
                    Unit unit = Unit.a;
                    switch (i112) {
                        case 0:
                            ((Integer) obj2).getClass();
                            int a2 = RecomposeScopeImplKt.a(1);
                            MainActivityKt.a(this.k, this.l, this.m, this.n, (Composer) obj, a2);
                            return unit;
                        default:
                            ((Integer) obj2).getClass();
                            int a22 = RecomposeScopeImplKt.a(1);
                            MainActivityKt.a(this.k, this.l, this.m, this.n, (Composer) obj, a22);
                            return unit;
                    }
                }
            };
            r.d = function2;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(2:3|(5:5|6|7|(1:(1:(4:11|12|13|14)(2:17|18))(3:19|20|21))(3:27|(2:29|(2:31|(5:35|(6:37|(4:40|(3:42|43|44)(1:46)|45|38)|47|48|(1:50)|(1:52))|53|(1:55)|(1:57)))(2:58|(2:60|(2:62|63)(3:64|(1:66)|(1:68)(3:69|(3:71|(3:73|(1:75)|(1:81))|82)|(4:84|85|(2:87|(2:89|26))|24))))))|90)|22))|93|6|7|(0)(0)|22) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x010f, code lost:
    
        if (r2 != null) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x011d, code lost:
    
        if (r12 == r1) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x002f, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x012c, code lost:
    
        net.blip.libblip.LoggerKt.a.getClass();
        net.blip.libblip.Logger.f(r10, new kotlin.Pair[0]);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(Intent intent, ScratchFileWriter scratchFileWriter, ContinuationImpl continuationImpl) {
        MainActivityKt$extractFilesFromSendIntent$1 mainActivityKt$extractFilesFromSendIntent$1;
        int i;
        String stringExtra;
        String stringExtra2;
        Object a;
        ClipData.Item itemAt;
        CharSequence text;
        String str;
        if (continuationImpl instanceof MainActivityKt$extractFilesFromSendIntent$1) {
            MainActivityKt$extractFilesFromSendIntent$1 mainActivityKt$extractFilesFromSendIntent$12 = (MainActivityKt$extractFilesFromSendIntent$1) continuationImpl;
            int i2 = mainActivityKt$extractFilesFromSendIntent$12.q;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                mainActivityKt$extractFilesFromSendIntent$12.q = i2 - Integer.MIN_VALUE;
                mainActivityKt$extractFilesFromSendIntent$1 = mainActivityKt$extractFilesFromSendIntent$12;
                Object obj = mainActivityKt$extractFilesFromSendIntent$1.p;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = mainActivityKt$extractFilesFromSendIntent$1.q;
                EmptyList emptyList = EmptyList.j;
                List list = null;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.b(obj);
                            str = (String) obj;
                            return CollectionsKt.B(UriUtilKt.a(str));
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    stringExtra2 = mainActivityKt$extractFilesFromSendIntent$1.o;
                    String str2 = mainActivityKt$extractFilesFromSendIntent$1.n;
                    ScratchFileWriter scratchFileWriter2 = mainActivityKt$extractFilesFromSendIntent$1.m;
                    ResultKt.b(obj);
                    stringExtra = str2;
                    scratchFileWriter = scratchFileWriter2;
                    a = obj;
                } else {
                    ResultKt.b(obj);
                    String action = intent.getAction();
                    if (action != null) {
                        int hashCode = action.hashCode();
                        if (hashCode != -1173264947) {
                            if (hashCode == -58484670 && action.equals("android.intent.action.SEND_MULTIPLE")) {
                                ArrayList a2 = IntentCompat.a(intent);
                                if (a2 != null) {
                                    ArrayList arrayList = new ArrayList();
                                    for (Object obj2 : a2) {
                                        if (obj2 != null) {
                                            arrayList.add(obj2);
                                        }
                                    }
                                    if (arrayList.isEmpty()) {
                                        arrayList = null;
                                    }
                                    if (arrayList != null) {
                                        return arrayList;
                                    }
                                }
                                List e = e(intent);
                                if (!e.isEmpty()) {
                                    list = e;
                                }
                                if (list != null) {
                                    return list;
                                }
                            }
                        } else if (action.equals("android.intent.action.SEND")) {
                            Uri uri = (Uri) IntentCompat.b(intent);
                            if (uri != null) {
                                return CollectionsKt.B(uri);
                            }
                            List e2 = e(intent);
                            if (e2.isEmpty()) {
                                e2 = null;
                            }
                            if (e2 != null) {
                                return e2;
                            }
                            stringExtra = intent.getStringExtra("android.intent.extra.TEXT");
                            if (stringExtra == null) {
                                ClipData clipData = intent.getClipData();
                                if (clipData != null) {
                                    if (clipData.getItemCount() <= 0) {
                                        clipData = null;
                                    }
                                    if (clipData != null && (itemAt = clipData.getItemAt(0)) != null && (text = itemAt.getText()) != null) {
                                        stringExtra = text.toString();
                                    }
                                }
                                stringExtra = null;
                            }
                            if (stringExtra != null) {
                                stringExtra2 = intent.getStringExtra("android.intent.extra.SUBJECT");
                                InternetShortcut a3 = InternetShortcutKt.a(stringExtra, stringExtra2);
                                if (a3 != null) {
                                    mainActivityKt$extractFilesFromSendIntent$1.m = scratchFileWriter;
                                    mainActivityKt$extractFilesFromSendIntent$1.n = stringExtra;
                                    mainActivityKt$extractFilesFromSendIntent$1.o = stringExtra2;
                                    mainActivityKt$extractFilesFromSendIntent$1.q = 1;
                                    a = ScratchFileKt.a(scratchFileWriter, a3, mainActivityKt$extractFilesFromSendIntent$1);
                                    if (a == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                }
                                mainActivityKt$extractFilesFromSendIntent$1.m = null;
                                mainActivityKt$extractFilesFromSendIntent$1.n = null;
                                mainActivityKt$extractFilesFromSendIntent$1.o = null;
                                mainActivityKt$extractFilesFromSendIntent$1.q = 2;
                                obj = ScratchFileWriter.b(scratchFileWriter, stringExtra, stringExtra2, mainActivityKt$extractFilesFromSendIntent$1);
                            }
                        }
                    }
                    return emptyList;
                }
                str = (String) a;
            }
        }
        mainActivityKt$extractFilesFromSendIntent$1 = new ContinuationImpl(continuationImpl);
        Object obj3 = mainActivityKt$extractFilesFromSendIntent$1.p;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = mainActivityKt$extractFilesFromSendIntent$1.q;
        EmptyList emptyList2 = EmptyList.j;
        List list2 = null;
        if (i == 0) {
        }
        str = (String) a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c(Activity activity, State state, Function1 function1, PeerId peerId, ArrayList arrayList, ArrayList arrayList2, SuspendingPermissionState suspendingPermissionState, NavController navController, ContinuationImpl continuationImpl) {
        MainActivityKt$handleInboundShare$1 mainActivityKt$handleInboundShare$1;
        int i;
        State state2;
        Function1 function12;
        PeerId peerId2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        NavController navController2;
        Function1 function13;
        PeerId peerId3;
        ArrayList arrayList5;
        State state3;
        boolean z;
        Throwable a;
        boolean z2;
        String str;
        Activity activity2 = activity;
        if (continuationImpl instanceof MainActivityKt$handleInboundShare$1) {
            MainActivityKt$handleInboundShare$1 mainActivityKt$handleInboundShare$12 = (MainActivityKt$handleInboundShare$1) continuationImpl;
            int i2 = mainActivityKt$handleInboundShare$12.u;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                mainActivityKt$handleInboundShare$12.u = i2 - Integer.MIN_VALUE;
                mainActivityKt$handleInboundShare$1 = mainActivityKt$handleInboundShare$12;
                Object obj = mainActivityKt$handleInboundShare$1.t;
                Object obj2 = CoroutineSingletons.j;
                i = mainActivityKt$handleInboundShare$1.u;
                PeerId peerId4 = null;
                Unit unit = Unit.a;
                if (i == 0) {
                    if (i == 1) {
                        NavController navController3 = mainActivityKt$handleInboundShare$1.s;
                        ArrayList arrayList6 = mainActivityKt$handleInboundShare$1.r;
                        arrayList5 = mainActivityKt$handleInboundShare$1.q;
                        peerId3 = mainActivityKt$handleInboundShare$1.p;
                        function13 = mainActivityKt$handleInboundShare$1.o;
                        state3 = mainActivityKt$handleInboundShare$1.n;
                        Activity activity3 = mainActivityKt$handleInboundShare$1.m;
                        ResultKt.b(obj);
                        navController2 = navController3;
                        arrayList4 = arrayList6;
                        activity2 = activity3;
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    if (arrayList.isEmpty()) {
                        LoggerKt.a.getClass();
                        Logger.l("inbound share contained no supported content", new Pair[0]);
                        Toast.makeText(activity2, "No shareable content found", 0).show();
                        return unit;
                    }
                    if (Build.VERSION.SDK_INT < 33) {
                        PermissionStatus permissionStatus = suspendingPermissionState.a;
                        permissionStatus.getClass();
                        if (!permissionStatus.equals(PermissionStatus.Granted.a)) {
                            Function1 function14 = suspendingPermissionState.b;
                            mainActivityKt$handleInboundShare$1.m = activity2;
                            state2 = state;
                            mainActivityKt$handleInboundShare$1.n = state2;
                            function12 = function1;
                            mainActivityKt$handleInboundShare$1.o = function12;
                            peerId2 = peerId;
                            mainActivityKt$handleInboundShare$1.p = peerId2;
                            arrayList3 = arrayList;
                            mainActivityKt$handleInboundShare$1.q = arrayList3;
                            arrayList4 = arrayList2;
                            mainActivityKt$handleInboundShare$1.r = arrayList4;
                            navController2 = navController;
                            mainActivityKt$handleInboundShare$1.s = navController2;
                            mainActivityKt$handleInboundShare$1.u = 1;
                            if (function14.b(mainActivityKt$handleInboundShare$1) == obj2) {
                                return obj2;
                            }
                            PeerId peerId5 = peerId2;
                            function13 = function12;
                            peerId3 = peerId5;
                            arrayList5 = arrayList3;
                            state3 = state2;
                        }
                    }
                    state2 = state;
                    function12 = function1;
                    peerId2 = peerId;
                    arrayList3 = arrayList;
                    arrayList4 = arrayList2;
                    navController2 = navController;
                    PeerId peerId52 = peerId2;
                    function13 = function12;
                    peerId3 = peerId52;
                    arrayList5 = arrayList3;
                    state3 = state2;
                }
                if (peerId3 == null && Users_DerivedKt.a(State_DerivedKt.d(state3), peerId3) != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (peerId3 != null && !z) {
                    if (!PeerId_DerivedKt.c(peerId3)) {
                        str = "person";
                    } else {
                        str = "device";
                    }
                    Toast.makeText(activity2, "Selected " + str + " not found", 0).show();
                }
                if (z) {
                    peerId4 = peerId3;
                }
                Serializable a2 = DispatcherKt.a(function13, peerId4, arrayList5, "inbound_share");
                a = Result.a(a2);
                if (a != null) {
                    String str2 = (String) a2;
                    Iterator it = arrayList4.iterator();
                    while (it.hasNext()) {
                        InboundShareUriAccess inboundShareUriAccess = (InboundShareUriAccess) it.next();
                        Logger logger = LoggerKt.a;
                        Pair pair = new Pair("transferId", str2);
                        Pair pair2 = new Pair("itemIndex", new Integer(inboundShareUriAccess.a));
                        Pair pair3 = new Pair("authority", inboundShareUriAccess.b);
                        Pair pair4 = new Pair("scheme", inboundShareUriAccess.c);
                        Pair pair5 = new Pair("intentHasReadFlag", Boolean.valueOf(inboundShareUriAccess.d));
                        Pair pair6 = new Pair("intentHasPersistableFlag", Boolean.valueOf(inboundShareUriAccess.e));
                        Pair pair7 = new Pair("clipDataContainsUri", Boolean.valueOf(inboundShareUriAccess.f));
                        Iterator it2 = it;
                        Pair pair8 = new Pair("readPermissionGranted", Boolean.valueOf(inboundShareUriAccess.g));
                        Pair pair9 = new Pair("queryReadableAtReceipt", inboundShareUriAccess.h);
                        Pair pair10 = new Pair("queryErrorAtReceipt", inboundShareUriAccess.i);
                        if (peerId3 != null) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        Pair[] pairArr = {pair, pair2, pair3, pair4, pair5, pair6, pair7, pair8, pair9, pair10, new Pair("directShare", Boolean.valueOf(z2))};
                        logger.getClass();
                        Logger.k("InboundShare", "inbound share URI received", pairArr);
                        it = it2;
                    }
                    NavController.b(navController2, "createTransfer/" + str2 + "?isFromShareIntent=true");
                    return unit;
                }
                Logger logger2 = LoggerKt.a;
                Pair[] pairArr2 = {new Pair("origin", "inbound_share"), new Pair("err", a)};
                logger2.getClass();
                Logger.e("unable to start transfer", pairArr2);
                Toast.makeText(activity2, "Unable to start transfer", 0).show();
                return unit;
            }
        }
        mainActivityKt$handleInboundShare$1 = new ContinuationImpl(continuationImpl);
        Object obj3 = mainActivityKt$handleInboundShare$1.t;
        Object obj22 = CoroutineSingletons.j;
        i = mainActivityKt$handleInboundShare$1.u;
        PeerId peerId42 = null;
        Unit unit2 = Unit.a;
        if (i == 0) {
        }
        if (peerId3 == null) {
        }
        z = false;
        if (peerId3 != null) {
            if (!PeerId_DerivedKt.c(peerId3)) {
            }
            Toast.makeText(activity2, "Selected " + str + " not found", 0).show();
        }
        if (z) {
        }
        Serializable a22 = DispatcherKt.a(function13, peerId42, arrayList5, "inbound_share");
        a = Result.a(a22);
        if (a != null) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v4 */
    public static final ArrayList d(Activity activity, Intent intent, List list) {
        Uri uri;
        Object failure;
        Result result;
        boolean moveToFirst;
        String str;
        boolean z;
        String str2;
        boolean z2;
        int i;
        Boolean bool;
        String str3;
        boolean z3;
        Uri uri2;
        ClipData.Item itemAt;
        boolean z4;
        Boolean bool2;
        ?? r13;
        Throwable a;
        ArrayList arrayList = new ArrayList(CollectionsKt.m(list, 10));
        ?? r3 = 0;
        int i2 = 0;
        for (Object obj : list) {
            int i3 = i2 + 1;
            if (i2 >= 0) {
                Uri uri3 = (Uri) obj;
                int checkUriPermission = activity.checkUriPermission(uri3, Process.myPid(), Process.myUid(), 1);
                if (Intrinsics.a(uri3.getScheme(), "content")) {
                    uri = uri3;
                } else {
                    uri = null;
                }
                if (uri != null) {
                    try {
                        Cursor query = activity.getContentResolver().query(uri3, new String[]{"_display_name"}, null, null, null);
                        if (query != null) {
                            try {
                                moveToFirst = query.moveToFirst();
                                query.close();
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                    break;
                                } catch (Throwable th2) {
                                    CloseableKt.a(query, th);
                                    throw th2;
                                    break;
                                }
                            }
                        } else {
                            moveToFirst = r3;
                        }
                        failure = Boolean.valueOf(moveToFirst);
                    } catch (Throwable th3) {
                        failure = new Result.Failure(th3);
                    }
                    result = new Result(failure);
                } else {
                    result = null;
                }
                String authority = uri3.getAuthority();
                String scheme = uri3.getScheme();
                if ((intent.getFlags() & 1) != 0) {
                    str = scheme;
                    z = true;
                } else {
                    str = scheme;
                    z = r3;
                }
                if ((intent.getFlags() & 64) != 0) {
                    str2 = str;
                    z2 = true;
                } else {
                    str2 = str;
                    z2 = r3;
                }
                ClipData clipData = intent.getClipData();
                if (clipData != null) {
                    i = clipData.getItemCount();
                } else {
                    i = r3;
                }
                Iterable j = RangesKt.j(r3, i);
                if ((j instanceof Collection) && ((Collection) j).isEmpty()) {
                    str3 = str2;
                    z3 = false;
                    bool = null;
                } else {
                    Iterator<Integer> it = j.iterator();
                    while (true) {
                        if (((IntProgressionIterator) it).l) {
                            int nextInt = ((IntIterator) it).nextInt();
                            bool = null;
                            ClipData clipData2 = intent.getClipData();
                            if (clipData2 != null && (itemAt = clipData2.getItemAt(nextInt)) != null) {
                                uri2 = itemAt.getUri();
                            } else {
                                uri2 = null;
                            }
                            if (Intrinsics.a(uri2, uri3)) {
                                str3 = str2;
                                z3 = true;
                                break;
                            }
                        } else {
                            bool = null;
                            str3 = str2;
                            z3 = false;
                            break;
                        }
                    }
                }
                if (checkUriPermission == 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (result != null) {
                    Object obj2 = result.j;
                    Boolean bool3 = Boolean.FALSE;
                    if (obj2 instanceof Result.Failure) {
                        obj2 = bool3;
                    }
                    bool2 = (Boolean) obj2;
                } else {
                    bool2 = bool;
                }
                if (result != null && (a = Result.a(result.j)) != null) {
                    r13 = a.getClass().getSimpleName();
                } else {
                    r13 = bool;
                }
                arrayList.add(new InboundShareUriAccess(i2, authority, str3, z, z2, z3, z4, bool2, r13));
                i2 = i3;
                r3 = 0;
            } else {
                CollectionsKt.T();
                throw null;
            }
        }
        return arrayList;
    }

    public static final List e(Intent intent) {
        ClipData clipData = intent.getClipData();
        if (clipData == null) {
            return EmptyList.j;
        }
        ListBuilder o = CollectionsKt.o();
        int itemCount = clipData.getItemCount();
        for (int i = 0; i < itemCount; i++) {
            Uri uri = clipData.getItemAt(i).getUri();
            if (uri != null) {
                o.add(uri);
            }
        }
        ListBuilder l = CollectionsKt.l(o);
        l.getClass();
        return CollectionsKt.X(CollectionsKt.Z(l));
    }
}

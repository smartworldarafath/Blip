package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.compose.animation.core.InfiniteRepeatableSpec;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.TargetBasedAnimation;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.foreground.SystemForegroundService;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.WorkForegroundUpdater;
import java.util.List;
import java.util.UUID;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.blip.android.shortcuts.ShortcutsManagerKt;
import net.blip.android.ui.navigation.AuthScope;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerId;
import net.blip.libblip.event.RemoveDevice;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class p1 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;

    public /* synthetic */ p1(Context context, AuthScope authScope, String str, Function1 function1) {
        this.j = 3;
        this.l = context;
        this.m = authScope;
        this.n = str;
        this.k = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        switch (this.j) {
            case 0:
                Context context = (Context) this.l;
                Peer peer = (Peer) this.m;
                Function1 function1 = (Function1) this.k;
                ((MutableState) this.n).setValue(Boolean.FALSE);
                ShortcutsManagerKt.b(context, peer.c());
                function1.b(peer.c());
                return Unit.a;
            case 1:
                Function1 function12 = (Function1) this.k;
                List list = (List) this.l;
                PagerState pagerState = (PagerState) this.m;
                Function0 function0 = (Function0) this.n;
                function12.b(CollectionsKt.B(list.get(pagerState.d.a())));
                function0.a();
                return Unit.a;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Number number = (Number) this.l;
                InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) this.m;
                Number number2 = (Number) this.k;
                InfiniteRepeatableSpec infiniteRepeatableSpec = (InfiniteRepeatableSpec) this.n;
                if (!number.equals(transitionAnimationState.j) || !number2.equals(transitionAnimationState.k)) {
                    transitionAnimationState.j = number;
                    transitionAnimationState.k = number2;
                    transitionAnimationState.n = new TargetBasedAnimation(infiniteRepeatableSpec, transitionAnimationState.l, number, number2, null);
                    ((SnapshotMutableStateImpl) InfiniteTransition.this.b).setValue(Boolean.TRUE);
                    transitionAnimationState.o = false;
                    transitionAnimationState.p = true;
                }
                return Unit.a;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Context context2 = (Context) this.l;
                AuthScope authScope = (AuthScope) this.m;
                String str = (String) this.n;
                Function1 function13 = (Function1) this.k;
                ShortcutsManagerKt.b(context2, new PeerId(authScope.a.m, 4, str));
                function13.b(new RemoveDevice(str));
                return Unit.a;
            default:
                WorkForegroundUpdater workForegroundUpdater = (WorkForegroundUpdater) this.m;
                UUID uuid = (UUID) this.k;
                ForegroundInfo foregroundInfo = (ForegroundInfo) this.n;
                Context context3 = (Context) this.l;
                int i = WorkForegroundUpdater.d;
                String uuid2 = uuid.toString();
                WorkSpec b = ((WorkSpecDao_Impl) workForegroundUpdater.c).b(uuid2);
                if (b != null && !b.b.a()) {
                    Processor processor = (Processor) workForegroundUpdater.b;
                    synchronized (processor.k) {
                        try {
                            Logger.d().e(Processor.l, "Moving WorkSpec (" + uuid2 + ") to the foreground");
                            WorkerWrapper workerWrapper = (WorkerWrapper) processor.g.remove(uuid2);
                            if (workerWrapper != null) {
                                if (processor.a == null) {
                                    PowerManager.WakeLock a = WakeLocks.a(processor.b);
                                    processor.a = a;
                                    a.acquire();
                                }
                                processor.f.put(uuid2, workerWrapper);
                                processor.b.startForegroundService(SystemForegroundDispatcher.a(processor.b, WorkSpecKt.a(workerWrapper.a), foregroundInfo));
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    WorkGenerationalId a2 = WorkSpecKt.a(b);
                    String str2 = SystemForegroundDispatcher.s;
                    Intent intent = new Intent(context3, (Class<?>) SystemForegroundService.class);
                    intent.setAction("ACTION_NOTIFY");
                    intent.putExtra("KEY_NOTIFICATION_ID", foregroundInfo.a);
                    intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", foregroundInfo.b);
                    intent.putExtra("KEY_NOTIFICATION", foregroundInfo.c);
                    intent.putExtra("KEY_WORKSPEC_ID", a2.a);
                    intent.putExtra("KEY_GENERATION", a2.b);
                    context3.startService(intent);
                    return null;
                }
                u2.l("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                return null;
        }
    }

    public /* synthetic */ p1(WorkForegroundUpdater workForegroundUpdater, UUID uuid, ForegroundInfo foregroundInfo, Context context) {
        this.j = 4;
        this.m = workForegroundUpdater;
        this.k = uuid;
        this.n = foregroundInfo;
        this.l = context;
    }

    public /* synthetic */ p1(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.j = i;
        this.l = obj;
        this.m = obj2;
        this.k = obj3;
        this.n = obj4;
    }

    public /* synthetic */ p1(Function1 function1, List list, PagerState pagerState, Function0 function0) {
        this.j = 1;
        this.k = function1;
        this.l = list;
        this.m = pagerState;
        this.n = function0;
    }
}

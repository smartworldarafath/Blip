package net.blip.android;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManager;
import com.google.android.play.core.review.zzd;
import com.google.android.play.core.review.zzi;
import defpackage.u2;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.tasks.TasksKt;
import net.blip.libblip.PeerId;
import net.blip.libblip.Transfer_DerivedKt;
import net.blip.libblip.frontend.Auth;
import net.blip.libblip.frontend.Messaging;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReviewRequestPrompt {
    public final ReviewManager a;
    public final Function0 b;
    public final SharedPreferences c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: net.blip.android.ReviewRequestPrompt$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function0<Long> {
        public static final AnonymousClass1 r = new FunctionReferenceImpl(0, System.class, "currentTimeMillis", "currentTimeMillis()J", 0);

        @Override // kotlin.jvm.functions.Function0
        public final Object a() {
            return Long.valueOf(System.currentTimeMillis());
        }
    }

    public ReviewRequestPrompt(Context context) {
        Context applicationContext = context.getApplicationContext();
        zzd zzdVar = new zzd(new zzi(applicationContext == null ? context : applicationContext));
        AnonymousClass1 anonymousClass1 = AnonymousClass1.r;
        this.a = zzdVar;
        this.b = anonymousClass1;
        this.c = context.getSharedPreferences("review-request", 0);
    }

    public static final Long a(ReviewRequestPrompt reviewRequestPrompt, State state) {
        String str;
        Long l;
        String str2;
        Messaging messaging = state.t;
        Map map = state.B;
        if (messaging != null && messaging.o) {
            Auth auth = state.r;
            if (auth != null) {
                str = auth.n;
            } else {
                str = null;
            }
            Collection<Transfer> values = map.values();
            if (!(values instanceof Collection) || !values.isEmpty()) {
                for (Transfer transfer : values) {
                    if (transfer.w == Transfer.Status.u) {
                        Transfer.Direction direction = transfer.v;
                        if (direction != Transfer.Direction.o) {
                            if (direction == Transfer.Direction.n && str != null) {
                                PeerId peerId = transfer.n;
                                if (peerId != null) {
                                    str2 = peerId.m;
                                } else {
                                    str2 = null;
                                }
                                if (Intrinsics.a(str2, str)) {
                                }
                            }
                        }
                        Collection values2 = map.values();
                        if (!(values2 instanceof Collection) || !values2.isEmpty()) {
                            Iterator it = values2.iterator();
                            while (it.hasNext()) {
                                if (Transfer_DerivedKt.c((Transfer) it.next())) {
                                    break;
                                }
                            }
                        }
                        long longValue = ((Number) reviewRequestPrompt.b.a()).longValue();
                        long j = Long.MIN_VALUE;
                        if (reviewRequestPrompt.c.getLong("review-request-timestamp", Long.MIN_VALUE) <= longValue - 11059200000L) {
                            Collection values3 = map.values();
                            ArrayList arrayList = new ArrayList();
                            Iterator it2 = values3.iterator();
                            while (it2.hasNext()) {
                                Instant instant = ((Transfer) it2.next()).C;
                                if (instant != null) {
                                    l = Long.valueOf((instant.getNano() / 1000000) + (instant.getEpochSecond() * 1000));
                                } else {
                                    l = null;
                                }
                                if (l != null) {
                                    arrayList.add(l);
                                }
                            }
                            Long l2 = (Long) CollectionsKt.D(arrayList);
                            if (l2 != null) {
                                j = l2.longValue();
                            }
                            long j2 = (j + 60000) - longValue;
                            if (j2 < 0) {
                                j2 = 0;
                            }
                            return Long.valueOf(j2);
                        }
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(2:3|(5:5|6|7|(1:(1:(3:11|12|13)(2:15|16))(2:17|18))(3:22|23|(2:25|21))|19))|33|6|7|(0)(0)|19) */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0080, code lost:
    
        if (kotlinx.coroutines.tasks.TasksKt.a(r9, r1) != r2) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0085, code lost:
    
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009d, code lost:
    
        r9 = r9.j.j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a2, code lost:
    
        if (r9 == (-1)) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a4, code lost:
    
        net.blip.libblip.LoggerKt.a.getClass();
        net.blip.libblip.Logger.h("review prompt unavailable: official Play Store not found", new kotlin.Pair[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b2, code lost:
    
        r10 = net.blip.libblip.LoggerKt.a;
        r9 = new kotlin.Pair[]{new kotlin.Pair("error_code", new java.lang.Integer(r9))};
        r10.getClass();
        net.blip.libblip.Logger.l("review prompt unavailable", r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0083, code lost:
    
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0087, code lost:
    
        r10 = net.blip.libblip.LoggerKt.a;
        r9 = new kotlin.Pair[]{new kotlin.Pair("err", r9)};
        r10.getClass();
        net.blip.libblip.Logger.l("review prompt failed", r9);
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(ReviewRequestPrompt reviewRequestPrompt, Activity activity, ContinuationImpl continuationImpl) {
        ReviewRequestPrompt$requestReview$1 reviewRequestPrompt$requestReview$1;
        int i;
        ReviewManager reviewManager = reviewRequestPrompt.a;
        if (continuationImpl instanceof ReviewRequestPrompt$requestReview$1) {
            reviewRequestPrompt$requestReview$1 = (ReviewRequestPrompt$requestReview$1) continuationImpl;
            int i2 = reviewRequestPrompt$requestReview$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                reviewRequestPrompt$requestReview$1.p = i2 - Integer.MIN_VALUE;
                Object obj = reviewRequestPrompt$requestReview$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = reviewRequestPrompt$requestReview$1.p;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.b(obj);
                            return Unit.a;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    activity = reviewRequestPrompt$requestReview$1.m;
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    Task b = ((zzd) reviewManager).b();
                    b.getClass();
                    reviewRequestPrompt$requestReview$1.m = activity;
                    reviewRequestPrompt$requestReview$1.p = 1;
                    obj = TasksKt.a(b, reviewRequestPrompt$requestReview$1);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                reviewRequestPrompt.c.edit().putLong("review-request-timestamp", ((Number) reviewRequestPrompt.b.a()).longValue()).apply();
                Task a = ((zzd) reviewManager).a(activity, (ReviewInfo) obj);
                a.getClass();
                reviewRequestPrompt$requestReview$1.m = null;
                reviewRequestPrompt$requestReview$1.p = 2;
            }
        }
        reviewRequestPrompt$requestReview$1 = new ReviewRequestPrompt$requestReview$1(reviewRequestPrompt, continuationImpl);
        Object obj2 = reviewRequestPrompt$requestReview$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = reviewRequestPrompt$requestReview$1.p;
        if (i == 0) {
        }
        reviewRequestPrompt.c.edit().putLong("review-request-timestamp", ((Number) reviewRequestPrompt.b.a()).longValue()).apply();
        Task a2 = ((zzd) reviewManager).a(activity, (ReviewInfo) obj2);
        a2.getClass();
        reviewRequestPrompt$requestReview$1.m = null;
        reviewRequestPrompt$requestReview$1.p = 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(Activity activity, StateFlow stateFlow, ContinuationImpl continuationImpl) {
        ReviewRequestPrompt$observe$1 reviewRequestPrompt$observe$1;
        int i;
        if (continuationImpl instanceof ReviewRequestPrompt$observe$1) {
            reviewRequestPrompt$observe$1 = (ReviewRequestPrompt$observe$1) continuationImpl;
            int i2 = reviewRequestPrompt$observe$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                reviewRequestPrompt$observe$1.o = i2 - Integer.MIN_VALUE;
                Object obj = reviewRequestPrompt$observe$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = reviewRequestPrompt$observe$1.o;
                if (i == 0) {
                    if (i != 1) {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return;
                    }
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    ReviewRequestPrompt$observe$2 reviewRequestPrompt$observe$2 = new ReviewRequestPrompt$observe$2(this, stateFlow, activity, null);
                    stateFlow.getClass();
                    reviewRequestPrompt$observe$1.o = 1;
                    if (FlowKt.h(stateFlow, reviewRequestPrompt$observe$2, reviewRequestPrompt$observe$1) == coroutineSingletons) {
                        return;
                    }
                }
                u2.l("SharedFlow never completes, this call should never return.");
            }
        }
        reviewRequestPrompt$observe$1 = new ReviewRequestPrompt$observe$1(this, continuationImpl);
        Object obj2 = reviewRequestPrompt$observe$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = reviewRequestPrompt$observe$1.o;
        if (i == 0) {
        }
        u2.l("SharedFlow never completes, this call should never return.");
    }
}

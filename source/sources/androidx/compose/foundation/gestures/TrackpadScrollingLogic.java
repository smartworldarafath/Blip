package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import defpackage.u2;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TrackpadScrollingLogic extends NonTouchScrollingLogic {
    public final BufferedChannel f;
    public Job g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TrackpadScrollDelta {
        public final long a;
        public final long b;
        public final boolean c;

        public TrackpadScrollDelta(long j, long j2, boolean z) {
            this.a = j;
            this.b = j2;
            this.c = z;
        }

        public final TrackpadScrollDelta a(TrackpadScrollDelta trackpadScrollDelta) {
            boolean z;
            long f = Offset.f(this.a, trackpadScrollDelta.a);
            long max = Math.max(this.b, trackpadScrollDelta.b);
            if (!this.c && !trackpadScrollDelta.c) {
                z = false;
            } else {
                z = true;
            }
            return new TrackpadScrollDelta(f, max, z);
        }
    }

    public TrackpadScrollingLogic(ScrollingLogic scrollingLogic, Function2 function2, Density density) {
        super(scrollingLogic, function2, density);
        this.f = ChannelKt.a(Integer.MAX_VALUE, 6, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00cf, code lost:
    
        if (r0.n(r3, r4) != r5) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00d1, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ac, code lost:
    
        if (r18.b(r1, r4) == r5) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002e  */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c(TrackpadScrollingLogic trackpadScrollingLogic, ScrollingLogic scrollingLogic, TrackpadScrollDelta trackpadScrollDelta, ContinuationImpl continuationImpl) {
        TrackpadScrollingLogic$dispatchTrackpadScroll$1 trackpadScrollingLogic$dispatchTrackpadScroll$1;
        int i;
        trackpadScrollingLogic.getClass();
        DifferentialVelocityTracker differentialVelocityTracker = trackpadScrollingLogic.e;
        if (continuationImpl instanceof TrackpadScrollingLogic$dispatchTrackpadScroll$1) {
            trackpadScrollingLogic$dispatchTrackpadScroll$1 = (TrackpadScrollingLogic$dispatchTrackpadScroll$1) continuationImpl;
            int i2 = trackpadScrollingLogic$dispatchTrackpadScroll$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                trackpadScrollingLogic$dispatchTrackpadScroll$1.o = i2 - Integer.MIN_VALUE;
                Object obj = trackpadScrollingLogic$dispatchTrackpadScroll$1.m;
                Object obj2 = CoroutineSingletons.j;
                i = trackpadScrollingLogic$dispatchTrackpadScroll$1.o;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.b(obj);
                            return Unit.a;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    ?? obj3 = new Object();
                    obj3.j = trackpadScrollDelta;
                    long j = trackpadScrollDelta.b;
                    long j2 = trackpadScrollDelta.a;
                    differentialVelocityTracker.a.a(j, Float.intBitsToFloat((int) (j2 >> 32)));
                    differentialVelocityTracker.b.a(j, Float.intBitsToFloat((int) (j2 & 4294967295L)));
                    TrackpadScrollDelta e = e(trackpadScrollingLogic.f);
                    if (e != null) {
                        long j3 = e.b;
                        long j4 = e.a;
                        differentialVelocityTracker.a.a(j3, Float.intBitsToFloat((int) (j4 >> 32)));
                        differentialVelocityTracker.b.a(j3, Float.intBitsToFloat((int) (j4 & 4294967295L)));
                        obj3.j = ((TrackpadScrollDelta) obj3.j).a(e);
                    }
                    Function2 trackpadScrollingLogic$dispatchTrackpadScroll$3 = new TrackpadScrollingLogic$dispatchTrackpadScroll$3(trackpadScrollingLogic, scrollingLogic, obj3, null);
                    trackpadScrollingLogic$dispatchTrackpadScroll$1.o = 1;
                }
                Function2 function2 = trackpadScrollingLogic.b;
                Velocity velocity = new Velocity(VelocityKt.a(differentialVelocityTracker.a.c(Float.MAX_VALUE), differentialVelocityTracker.b.c(Float.MAX_VALUE)));
                trackpadScrollingLogic$dispatchTrackpadScroll$1.o = 2;
            }
        }
        trackpadScrollingLogic$dispatchTrackpadScroll$1 = new TrackpadScrollingLogic$dispatchTrackpadScroll$1(trackpadScrollingLogic, continuationImpl);
        Object obj4 = trackpadScrollingLogic$dispatchTrackpadScroll$1.m;
        Object obj22 = CoroutineSingletons.j;
        i = trackpadScrollingLogic$dispatchTrackpadScroll$1.o;
        if (i == 0) {
        }
        Function2 function22 = trackpadScrollingLogic.b;
        Velocity velocity2 = new Velocity(VelocityKt.a(differentialVelocityTracker.a.c(Float.MAX_VALUE), differentialVelocityTracker.b.c(Float.MAX_VALUE)));
        trackpadScrollingLogic$dispatchTrackpadScroll$1.o = 2;
    }

    public static TrackpadScrollDelta e(BufferedChannel bufferedChannel) {
        TrackpadScrollDelta trackpadScrollDelta = null;
        Iterator e = SequencesKt.e(new NonTouchScrollingLogicKt$untilNull$1(new b(bufferedChannel, 1), null));
        while (e.hasNext()) {
            TrackpadScrollDelta trackpadScrollDelta2 = (TrackpadScrollDelta) e.next();
            if (trackpadScrollDelta != null) {
                trackpadScrollDelta2 = trackpadScrollDelta.a(trackpadScrollDelta2);
            }
            trackpadScrollDelta = trackpadScrollDelta2;
        }
        return trackpadScrollDelta;
    }

    public final boolean d(PointerEvent pointerEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        BufferedChannel bufferedChannel;
        ScrollingLogic scrollingLogic;
        boolean z4;
        boolean z5;
        boolean z6;
        PointerInputChange pointerInputChange = (PointerInputChange) CollectionsKt.t(pointerEvent.a);
        if (pointerInputChange != null) {
            List b = pointerInputChange.b();
            int size = b.size();
            int i = 0;
            z3 = false;
            while (true) {
                bufferedChannel = this.f;
                scrollingLogic = this.a;
                if (i >= size) {
                    break;
                }
                HistoricalChange historicalChange = (HistoricalChange) b.get(i);
                long j = historicalChange.d ^ (-9223372034707292160L);
                if (scrollingLogic.j(scrollingLogic.f(j)) == 0.0f) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (!z6) {
                    if ((bufferedChannel.j(new TrackpadScrollDelta(j, historicalChange.a, false)) instanceof ChannelResult.Failed) && !z3) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                }
                i++;
            }
            z = true;
            z2 = false;
            long j2 = pointerInputChange.l ^ (-9223372034707292160L);
            if (pointerEvent.f == 12) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (scrollingLogic.j(scrollingLogic.f(j2)) == 0.0f) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (!z5 || z4) {
                if (!(bufferedChannel.j(new TrackpadScrollDelta(j2, pointerInputChange.b, z4)) instanceof ChannelResult.Failed) || z3) {
                    z3 = true;
                }
            }
            if (z3 && !this.d) {
                return z2;
            }
            return z;
        }
        z = true;
        z2 = false;
        z3 = z2;
        if (z3) {
        }
        return z;
    }
}

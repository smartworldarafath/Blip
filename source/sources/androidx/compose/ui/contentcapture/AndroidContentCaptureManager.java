package androidx.compose.ui.contentcapture;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.util.LongSparseArray;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.translation.TranslationResponseValue;
import android.view.translation.ViewTranslationResponse;
import androidx.collection.IntObjectMap;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.ui.contentcapture.AndroidContentCaptureManager;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.SemanticsNodeCopy;
import androidx.compose.ui.platform.SemanticsUtils_androidKt;
import androidx.compose.ui.platform.coreshims.ContentCaptureSessionCompat;
import androidx.compose.ui.platform.coreshims.ViewStructureCompat;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import defpackage.a0;
import defpackage.h;
import defpackage.k8;
import defpackage.q;
import defpackage.u0;
import defpackage.u2;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ChannelKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidContentCaptureManager implements DefaultLifecycleObserver, View.OnAttachStateChangeListener {
    public final AndroidComposeView j;
    public final Function0 k;
    public ContentCaptureSessionWrapper l;
    public final ArrayList m = new ArrayList();
    public final long n = 100;
    public TranslateStatus o = TranslateStatus.j;
    public boolean p = true;
    public final BufferedChannel q = ChannelKt.a(1, 6, null);
    public MutableIntObjectMap r;
    public long s;
    public final MutableIntObjectMap t;
    public SemanticsNodeCopy u;
    public boolean v;
    public final a w;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TranslateStatus {
        public static final TranslateStatus j;
        public static final TranslateStatus k;
        public static final /* synthetic */ TranslateStatus[] l;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.contentcapture.AndroidContentCaptureManager$TranslateStatus, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.ui.contentcapture.AndroidContentCaptureManager$TranslateStatus, java.lang.Enum] */
        static {
            ?? r0 = new Enum("SHOW_ORIGINAL", 0);
            j = r0;
            ?? r1 = new Enum("SHOW_TRANSLATED", 1);
            k = r1;
            TranslateStatus[] translateStatusArr = {r0, r1};
            l = translateStatusArr;
            EnumEntriesKt.a(translateStatusArr);
        }

        public static TranslateStatus valueOf(String str) {
            return (TranslateStatus) Enum.valueOf(TranslateStatus.class, str);
        }

        public static TranslateStatus[] values() {
            return (TranslateStatus[]) l.clone();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ViewTranslationHelperMethods {
        /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        
            r4 = r4.getValue("android:text");
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
        
            r4 = r4.getText();
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static void a(AndroidContentCaptureManager androidContentCaptureManager, LongSparseArray longSparseArray) {
            TranslationResponseValue value;
            CharSequence text;
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds;
            SemanticsNode semanticsNode;
            Function1 function1;
            int size = longSparseArray.size();
            for (int i = 0; i < size; i++) {
                long keyAt = longSparseArray.keyAt(i);
                ViewTranslationResponse m = u0.m(longSparseArray.get(keyAt));
                if (m != null && value != null && text != null && (semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) androidContentCaptureManager.c().b((int) keyAt)) != null && (semanticsNode = semanticsNodeWithAdjustedBounds.a) != null) {
                    Object e = semanticsNode.d.j.e(SemanticsActions.l);
                    if (e == null) {
                        e = null;
                    }
                    AccessibilityAction accessibilityAction = (AccessibilityAction) e;
                    if (accessibilityAction != null && (function1 = (Function1) accessibilityAction.b) != null) {
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.compose.ui.contentcapture.a] */
    public AndroidContentCaptureManager(AndroidComposeView androidComposeView, Function0 function0) {
        this.j = androidComposeView;
        this.k = function0;
        new Handler(Looper.getMainLooper());
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.a;
        mutableIntObjectMap.getClass();
        this.r = mutableIntObjectMap;
        this.t = new MutableIntObjectMap();
        this.u = new SemanticsNodeCopy(androidComposeView.getSemanticsOwner().a(), mutableIntObjectMap);
        this.w = new Runnable() { // from class: androidx.compose.ui.contentcapture.a
            @Override // java.lang.Runnable
            public final void run() {
                int i;
                int i2;
                AndroidContentCaptureManager androidContentCaptureManager = AndroidContentCaptureManager.this;
                boolean d = androidContentCaptureManager.d();
                AndroidComposeView androidComposeView2 = androidContentCaptureManager.j;
                if (!d) {
                    return;
                }
                Trace.beginSection("ContentCapture:changeChecker");
                try {
                    androidComposeView2.r(true);
                    MutableIntObjectMap mutableIntObjectMap2 = androidContentCaptureManager.t;
                    int[] iArr = mutableIntObjectMap2.b;
                    long[] jArr = mutableIntObjectMap2.a;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i3 = 0;
                        while (true) {
                            long j = jArr[i3];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i4 = 8 - ((~(i3 - length)) >>> 31);
                                int i5 = 0;
                                while (i5 < i4) {
                                    if ((255 & j) < 128) {
                                        int i6 = iArr[(i3 << 3) + i5];
                                        if (!androidContentCaptureManager.c().a(i6)) {
                                            i2 = i3;
                                            androidContentCaptureManager.m.add(new ContentCaptureEvent(i6, androidContentCaptureManager.s, ContentCaptureEventType.k, null));
                                            androidContentCaptureManager.q.j(Unit.a);
                                            j >>= 8;
                                            i5++;
                                            i3 = i2;
                                        }
                                    }
                                    i2 = i3;
                                    j >>= 8;
                                    i5++;
                                    i3 = i2;
                                }
                                int i7 = i3;
                                if (i4 != 8) {
                                    break;
                                } else {
                                    i = i7;
                                }
                            } else {
                                i = i3;
                            }
                            if (i == length) {
                                break;
                            } else {
                                i3 = i + 1;
                            }
                        }
                    }
                    Trace.beginSection("ContentCapture:sendAppearEvents");
                    androidContentCaptureManager.k(androidComposeView2.getSemanticsOwner().a(), androidContentCaptureManager.u);
                    Trace.endSection();
                    androidContentCaptureManager.b(androidContentCaptureManager.c());
                    androidContentCaptureManager.o();
                    androidContentCaptureManager.v = false;
                } catch (Throwable th) {
                    throw th;
                } finally {
                    Trace.endSection();
                }
            }
        };
    }

    public static void j(final AndroidContentCaptureManager androidContentCaptureManager, final LongSparseArray longSparseArray) {
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        if (Intrinsics.a(Looper.getMainLooper().getThread(), Thread.currentThread())) {
            ViewTranslationHelperMethods.a(androidContentCaptureManager, longSparseArray);
        } else {
            androidContentCaptureManager.j.post(new Runnable() { // from class: androidx.compose.ui.contentcapture.b
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidContentCaptureManager.ViewTranslationHelperMethods.a(AndroidContentCaptureManager.this, longSparseArray);
                }
            });
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0082, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(r8.n, r0) == r1) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0082 -> B:11:0x002b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(ContinuationImpl continuationImpl) {
        AndroidContentCaptureManager$boundsUpdatesEventLoop$1 androidContentCaptureManager$boundsUpdatesEventLoop$1;
        int i;
        ChannelIterator it;
        ChannelIterator channelIterator;
        Object b;
        if (continuationImpl instanceof AndroidContentCaptureManager$boundsUpdatesEventLoop$1) {
            androidContentCaptureManager$boundsUpdatesEventLoop$1 = (AndroidContentCaptureManager$boundsUpdatesEventLoop$1) continuationImpl;
            int i2 = androidContentCaptureManager$boundsUpdatesEventLoop$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                androidContentCaptureManager$boundsUpdatesEventLoop$1.p = i2 - Integer.MIN_VALUE;
                Object obj = androidContentCaptureManager$boundsUpdatesEventLoop$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = androidContentCaptureManager$boundsUpdatesEventLoop$1.p;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            channelIterator = androidContentCaptureManager$boundsUpdatesEventLoop$1.m;
                            ResultKt.b(obj);
                            it = channelIterator;
                            androidContentCaptureManager$boundsUpdatesEventLoop$1.m = it;
                            androidContentCaptureManager$boundsUpdatesEventLoop$1.p = 1;
                            b = it.b(androidContentCaptureManager$boundsUpdatesEventLoop$1);
                            if (b != coroutineSingletons) {
                                channelIterator = it;
                                obj = b;
                                if (!((Boolean) obj).booleanValue()) {
                                    channelIterator.next();
                                    if (d()) {
                                        e();
                                    }
                                    Handler handler = this.j.getHandler();
                                    if (!this.v && handler != null) {
                                        this.v = true;
                                        handler.post(this.w);
                                    }
                                    androidContentCaptureManager$boundsUpdatesEventLoop$1.m = channelIterator;
                                    androidContentCaptureManager$boundsUpdatesEventLoop$1.p = 2;
                                } else {
                                    return Unit.a;
                                }
                            }
                            return coroutineSingletons;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    channelIterator = androidContentCaptureManager$boundsUpdatesEventLoop$1.m;
                    ResultKt.b(obj);
                    if (!((Boolean) obj).booleanValue()) {
                    }
                } else {
                    ResultKt.b(obj);
                    it = this.q.iterator();
                    androidContentCaptureManager$boundsUpdatesEventLoop$1.m = it;
                    androidContentCaptureManager$boundsUpdatesEventLoop$1.p = 1;
                    b = it.b(androidContentCaptureManager$boundsUpdatesEventLoop$1);
                    if (b != coroutineSingletons) {
                    }
                    return coroutineSingletons;
                }
            }
        }
        androidContentCaptureManager$boundsUpdatesEventLoop$1 = new AndroidContentCaptureManager$boundsUpdatesEventLoop$1(this, continuationImpl);
        Object obj2 = androidContentCaptureManager$boundsUpdatesEventLoop$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = androidContentCaptureManager$boundsUpdatesEventLoop$1.p;
        if (i == 0) {
        }
    }

    public final void b(IntObjectMap intObjectMap) {
        int[] iArr;
        int[] iArr2;
        long j;
        char c;
        long j2;
        int i;
        int i2;
        SemanticsNode semanticsNode;
        long j3;
        AnnotatedString annotatedString;
        AnnotatedString annotatedString2;
        long j4;
        AnnotatedString annotatedString3;
        IntObjectMap intObjectMap2 = intObjectMap;
        int[] iArr3 = intObjectMap2.b;
        long[] jArr = intObjectMap2.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i3 = 0;
            while (true) {
                long j5 = jArr[i3];
                char c2 = 7;
                long j6 = -9187201950435737472L;
                if ((((~j5) << 7) & j5 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8;
                    int i5 = 8 - ((~(i3 - length)) >>> 31);
                    int i6 = 0;
                    while (i6 < i5) {
                        if ((j5 & 255) < 128) {
                            int i7 = iArr3[(i3 << 3) + i6];
                            c = c2;
                            SemanticsNodeCopy semanticsNodeCopy = (SemanticsNodeCopy) this.t.b(i7);
                            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) intObjectMap2.b(i7);
                            if (semanticsNodeWithAdjustedBounds != null) {
                                semanticsNode = semanticsNodeWithAdjustedBounds.a;
                            } else {
                                semanticsNode = null;
                            }
                            if (semanticsNode != null) {
                                j2 = j6;
                                int i8 = semanticsNode.f;
                                MutableScatterMap mutableScatterMap = semanticsNode.d.j;
                                if (semanticsNodeCopy == null) {
                                    Object[] objArr = mutableScatterMap.b;
                                    long[] jArr2 = mutableScatterMap.a;
                                    int length2 = jArr2.length - 2;
                                    iArr2 = iArr3;
                                    if (length2 >= 0) {
                                        int i9 = i4;
                                        int i10 = 0;
                                        while (true) {
                                            long j7 = jArr2[i10];
                                            j = j5;
                                            if ((((~j7) << c) & j7 & j2) != j2) {
                                                int i11 = 8 - ((~(i10 - length2)) >>> 31);
                                                for (int i12 = 0; i12 < i11; i12++) {
                                                    if ((j7 & 255) < 128) {
                                                        j4 = j7;
                                                        SemanticsPropertyKey semanticsPropertyKey = (SemanticsPropertyKey) objArr[(i10 << 3) + i12];
                                                        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.C;
                                                        if (Intrinsics.a(semanticsPropertyKey, semanticsPropertyKey2)) {
                                                            Object e = mutableScatterMap.e(semanticsPropertyKey2);
                                                            if (e == null) {
                                                                e = null;
                                                            }
                                                            List list = (List) e;
                                                            if (list != null) {
                                                                annotatedString3 = (AnnotatedString) CollectionsKt.t(list);
                                                            } else {
                                                                annotatedString3 = null;
                                                            }
                                                            l(i8, String.valueOf(annotatedString3));
                                                        }
                                                    } else {
                                                        j4 = j7;
                                                    }
                                                    j7 = j4 >> i9;
                                                }
                                                if (i11 != i9) {
                                                    break;
                                                }
                                            }
                                            if (i10 == length2) {
                                                break;
                                            }
                                            i10++;
                                            j5 = j;
                                            i9 = 8;
                                        }
                                    } else {
                                        j = j5;
                                    }
                                } else {
                                    iArr2 = iArr3;
                                    j = j5;
                                    Object[] objArr2 = mutableScatterMap.b;
                                    long[] jArr3 = mutableScatterMap.a;
                                    int length3 = jArr3.length - 2;
                                    if (length3 >= 0) {
                                        long[] jArr4 = jArr3;
                                        int i13 = 0;
                                        while (true) {
                                            long j8 = jArr4[i13];
                                            long[] jArr5 = jArr4;
                                            i = i6;
                                            if ((((~j8) << c) & j8 & j2) != j2) {
                                                int i14 = 8 - ((~(i13 - length3)) >>> 31);
                                                int i15 = 0;
                                                while (i15 < i14) {
                                                    if ((j8 & 255) < 128) {
                                                        j3 = j8;
                                                        SemanticsPropertyKey semanticsPropertyKey3 = (SemanticsPropertyKey) objArr2[(i13 << 3) + i15];
                                                        SemanticsPropertyKey semanticsPropertyKey4 = SemanticsProperties.C;
                                                        if (Intrinsics.a(semanticsPropertyKey3, semanticsPropertyKey4)) {
                                                            Object e2 = semanticsNodeCopy.a.j.e(semanticsPropertyKey4);
                                                            if (e2 == null) {
                                                                e2 = null;
                                                            }
                                                            List list2 = (List) e2;
                                                            if (list2 != null) {
                                                                annotatedString = (AnnotatedString) CollectionsKt.t(list2);
                                                            } else {
                                                                annotatedString = null;
                                                            }
                                                            Object e3 = mutableScatterMap.e(semanticsPropertyKey4);
                                                            if (e3 == null) {
                                                                e3 = null;
                                                            }
                                                            List list3 = (List) e3;
                                                            if (list3 != null) {
                                                                annotatedString2 = (AnnotatedString) CollectionsKt.t(list3);
                                                            } else {
                                                                annotatedString2 = null;
                                                            }
                                                            if (!Intrinsics.a(annotatedString, annotatedString2)) {
                                                                l(i8, String.valueOf(annotatedString2));
                                                            }
                                                        }
                                                    } else {
                                                        j3 = j8;
                                                    }
                                                    i15++;
                                                    j8 = j3 >> 8;
                                                }
                                                if (i14 != 8) {
                                                    break;
                                                }
                                            }
                                            if (i13 == length3) {
                                                break;
                                            }
                                            i13++;
                                            i6 = i;
                                            jArr4 = jArr5;
                                        }
                                        i2 = 8;
                                    }
                                }
                                i = i6;
                                i2 = 8;
                            } else {
                                throw q.p("no value for specified key");
                            }
                        } else {
                            iArr2 = iArr3;
                            j = j5;
                            c = c2;
                            j2 = j6;
                            i = i6;
                            i2 = i4;
                        }
                        j5 = j >> i2;
                        i6 = i + 1;
                        i4 = i2;
                        c2 = c;
                        j6 = j2;
                        iArr3 = iArr2;
                        intObjectMap2 = intObjectMap;
                    }
                    iArr = iArr3;
                    if (i5 != i4) {
                        return;
                    }
                } else {
                    iArr = iArr3;
                }
                if (i3 != length) {
                    i3++;
                    intObjectMap2 = intObjectMap;
                    iArr3 = iArr;
                } else {
                    return;
                }
            }
        }
    }

    public final IntObjectMap c() {
        if (this.p) {
            this.p = false;
            this.r = SemanticsOwnerKt.a(this.j.getSemanticsOwner(), new h(7));
            this.s = System.currentTimeMillis();
        }
        return this.r;
    }

    public final boolean d() {
        if (this.l != null) {
            return true;
        }
        return false;
    }

    public final void e() {
        ContentCaptureSessionWrapper contentCaptureSessionWrapper = this.l;
        if (contentCaptureSessionWrapper != null && Build.VERSION.SDK_INT >= 29) {
            ArrayList arrayList = this.m;
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ContentCaptureEvent contentCaptureEvent = (ContentCaptureEvent) arrayList.get(i);
                    int ordinal = contentCaptureEvent.c.ordinal();
                    if (ordinal != 0) {
                        if (ordinal == 1) {
                            ContentCaptureSessionCompat contentCaptureSessionCompat = (ContentCaptureSessionCompat) contentCaptureSessionWrapper;
                            AutofillId b = contentCaptureSessionCompat.b(contentCaptureEvent.a);
                            if (b != null) {
                                contentCaptureSessionCompat.e(b);
                            }
                        } else {
                            k8.e();
                            return;
                        }
                    } else {
                        ViewStructureCompat viewStructureCompat = contentCaptureEvent.d;
                        if (viewStructureCompat != null) {
                            ((ContentCaptureSessionCompat) contentCaptureSessionWrapper).d(viewStructureCompat.a);
                        }
                    }
                }
                ((ContentCaptureSessionCompat) contentCaptureSessionWrapper).a();
                arrayList.clear();
            }
        }
    }

    public final void f() {
        Function0 function0;
        this.o = TranslateStatus.j;
        IntObjectMap c = c();
        Object[] objArr = c.c;
        long[] jArr = c.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            MutableScatterMap mutableScatterMap = ((SemanticsNodeWithAdjustedBounds) objArr[(i << 3) + i3]).a.d.j;
                            Object e = mutableScatterMap.e(SemanticsProperties.E);
                            Object obj = null;
                            if (e == null) {
                                e = null;
                            }
                            if (e != null) {
                                Object e2 = mutableScatterMap.e(SemanticsActions.n);
                                if (e2 != null) {
                                    obj = e2;
                                }
                                AccessibilityAction accessibilityAction = (AccessibilityAction) obj;
                                if (accessibilityAction != null && (function0 = (Function0) accessibilityAction.b) != null) {
                                }
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        return;
                    }
                }
                if (i != length) {
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final void g() {
        Function1 function1;
        this.o = TranslateStatus.j;
        IntObjectMap c = c();
        Object[] objArr = c.c;
        long[] jArr = c.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            MutableScatterMap mutableScatterMap = ((SemanticsNodeWithAdjustedBounds) objArr[(i << 3) + i3]).a.d.j;
                            Object e = mutableScatterMap.e(SemanticsProperties.E);
                            Object obj = null;
                            if (e == null) {
                                e = null;
                            }
                            if (Intrinsics.a(e, Boolean.TRUE)) {
                                Object e2 = mutableScatterMap.e(SemanticsActions.m);
                                if (e2 != null) {
                                    obj = e2;
                                }
                                AccessibilityAction accessibilityAction = (AccessibilityAction) obj;
                                if (accessibilityAction != null && (function1 = (Function1) accessibilityAction.b) != null) {
                                }
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        return;
                    }
                }
                if (i != length) {
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final void i() {
        Function1 function1;
        this.o = TranslateStatus.k;
        IntObjectMap c = c();
        Object[] objArr = c.c;
        long[] jArr = c.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            MutableScatterMap mutableScatterMap = ((SemanticsNodeWithAdjustedBounds) objArr[(i << 3) + i3]).a.d.j;
                            Object e = mutableScatterMap.e(SemanticsProperties.E);
                            Object obj = null;
                            if (e == null) {
                                e = null;
                            }
                            if (Intrinsics.a(e, Boolean.FALSE)) {
                                Object e2 = mutableScatterMap.e(SemanticsActions.m);
                                if (e2 != null) {
                                    obj = e2;
                                }
                                AccessibilityAction accessibilityAction = (AccessibilityAction) obj;
                                if (accessibilityAction != null && (function1 = (Function1) accessibilityAction.b) != null) {
                                }
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        return;
                    }
                }
                if (i != length) {
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final void k(SemanticsNode semanticsNode, SemanticsNodeCopy semanticsNodeCopy) {
        a0 a0Var = new a0(2, semanticsNodeCopy, this);
        semanticsNode.getClass();
        List j = SemanticsNode.j(4, semanticsNode);
        int size = j.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = j.get(i2);
            if (c().a(((SemanticsNode) obj).f)) {
                a0Var.n(Integer.valueOf(i), obj);
                i++;
            }
        }
        List j2 = SemanticsNode.j(4, semanticsNode);
        int size2 = j2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            SemanticsNode semanticsNode2 = (SemanticsNode) j2.get(i3);
            IntObjectMap c = c();
            int i4 = semanticsNode2.f;
            if (c.a(i4)) {
                MutableIntObjectMap mutableIntObjectMap = this.t;
                if (mutableIntObjectMap.a(i4)) {
                    Object b = mutableIntObjectMap.b(i4);
                    if (b != null) {
                        k(semanticsNode2, (SemanticsNodeCopy) b);
                    } else {
                        throw q.p("node not present in pruned tree before this change");
                    }
                } else {
                    continue;
                }
            }
        }
    }

    public final void l(int i, String str) {
        ContentCaptureSessionWrapper contentCaptureSessionWrapper;
        if (Build.VERSION.SDK_INT < 29 || (contentCaptureSessionWrapper = this.l) == null) {
            return;
        }
        ContentCaptureSessionCompat contentCaptureSessionCompat = (ContentCaptureSessionCompat) contentCaptureSessionWrapper;
        AutofillId b = contentCaptureSessionCompat.b(i);
        if (b != null) {
            contentCaptureSessionCompat.f(b, str);
            return;
        }
        throw q.p("Invalid content capture ID");
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0097, code lost:
    
        if (r5 == null) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m(int i, SemanticsNode semanticsNode) {
        Function1 function1;
        Rect rect;
        ViewStructureCompat viewStructureCompat;
        String c;
        int size;
        Function1 function12;
        if (!d()) {
            return;
        }
        MutableScatterMap mutableScatterMap = semanticsNode.d.j;
        Object e = mutableScatterMap.e(SemanticsProperties.E);
        NodeCoordinator nodeCoordinator = null;
        if (e == null) {
            e = null;
        }
        Boolean bool = (Boolean) e;
        if (this.o == TranslateStatus.j && Intrinsics.a(bool, Boolean.TRUE)) {
            Object e2 = mutableScatterMap.e(SemanticsActions.m);
            if (e2 == null) {
                e2 = null;
            }
            AccessibilityAction accessibilityAction = (AccessibilityAction) e2;
            if (accessibilityAction != null && (function12 = (Function1) accessibilityAction.b) != null) {
            }
        } else if (this.o == TranslateStatus.k && Intrinsics.a(bool, Boolean.FALSE)) {
            Object e3 = mutableScatterMap.e(SemanticsActions.m);
            if (e3 == null) {
                e3 = null;
            }
            AccessibilityAction accessibilityAction2 = (AccessibilityAction) e3;
            if (accessibilityAction2 != null && (function1 = (Function1) accessibilityAction2.b) != null) {
            }
        }
        int i2 = semanticsNode.f;
        ContentCaptureSessionWrapper contentCaptureSessionWrapper = this.l;
        if (contentCaptureSessionWrapper != null && Build.VERSION.SDK_INT >= 29) {
            AutofillId autofillId = this.j.getAutofillId();
            SemanticsNode l = semanticsNode.l();
            int i3 = semanticsNode.f;
            if (l != null) {
                autofillId = ((ContentCaptureSessionCompat) contentCaptureSessionWrapper).b(l.f);
            }
            ViewStructureCompat c2 = ((ContentCaptureSessionCompat) contentCaptureSessionWrapper).c(autofillId, i3);
            if (c2 != null) {
                ViewStructure viewStructure = c2.a;
                SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.N;
                MutableScatterMap mutableScatterMap2 = semanticsConfiguration.j;
                if (!mutableScatterMap2.c(semanticsPropertyKey)) {
                    Bundle extras = viewStructure.getExtras();
                    if (extras != null) {
                        extras.putLong("android.view.contentcapture.EventTimestamp", this.s);
                        extras.putInt("android.view.ViewStructure.extra.EXTRA_VIEW_NODE_INDEX", i);
                    }
                    Object e4 = mutableScatterMap2.e(SemanticsProperties.A);
                    if (e4 == null) {
                        e4 = null;
                    }
                    String str = (String) e4;
                    if (str != null) {
                        viewStructure.setId(i3, null, null, str);
                    }
                    Object e5 = mutableScatterMap2.e(SemanticsProperties.n);
                    if (e5 == null) {
                        e5 = null;
                    }
                    if (((Boolean) e5) != null) {
                        viewStructure.setClassName("android.widget.ViewGroup");
                    }
                    Object e6 = mutableScatterMap2.e(SemanticsProperties.C);
                    if (e6 == null) {
                        e6 = null;
                    }
                    List list = (List) e6;
                    if (list != null) {
                        viewStructure.setClassName("android.widget.TextView");
                        viewStructure.setText(ListUtilsKt.a(list, "\n", null, 62));
                    }
                    Object e7 = mutableScatterMap2.e(SemanticsProperties.G);
                    if (e7 == null) {
                        e7 = null;
                    }
                    AnnotatedString annotatedString = (AnnotatedString) e7;
                    if (annotatedString != null) {
                        viewStructure.setClassName("android.widget.EditText");
                        viewStructure.setText(annotatedString);
                    }
                    Object e8 = mutableScatterMap2.e(SemanticsProperties.a);
                    if (e8 == null) {
                        e8 = null;
                    }
                    List list2 = (List) e8;
                    if (list2 != null) {
                        viewStructure.setContentDescription(ListUtilsKt.a(list2, "\n", null, 62));
                    }
                    Object e9 = mutableScatterMap2.e(SemanticsProperties.z);
                    if (e9 == null) {
                        e9 = null;
                    }
                    Role role = (Role) e9;
                    if (role != null && (c = SemanticsUtils_androidKt.c(role.a)) != null) {
                        viewStructure.setClassName(c);
                    }
                    TextLayoutResult a = SemanticsUtils_androidKt.a(semanticsConfiguration);
                    if (a != null) {
                        TextLayoutInput textLayoutInput = a.a;
                        TextStyle textStyle = textLayoutInput.b;
                        Density density = textLayoutInput.g;
                        viewStructure.setTextStyle(density.e0() * density.getDensity() * TextUnit.c(textStyle.a.b), 0, 0, 0);
                    }
                    NodeCoordinator d = semanticsNode.d();
                    if (d != null) {
                        if (d.d1().w) {
                            nodeCoordinator = d;
                        }
                        if (nodeCoordinator != null) {
                            rect = semanticsNode.a(nodeCoordinator);
                            float f = rect.a;
                            float f2 = rect.b;
                            viewStructure.setDimens((int) f, (int) f2, 0, 0, (int) (rect.c - f), (int) (rect.d - f2));
                            viewStructureCompat = c2;
                            if (viewStructureCompat != null) {
                                this.m.add(new ContentCaptureEvent(i2, this.s, ContentCaptureEventType.j, viewStructureCompat));
                            }
                            List j = SemanticsNode.j(4, semanticsNode);
                            size = j.size();
                            int i4 = 0;
                            for (int i5 = 0; i5 < size; i5++) {
                                Object obj = j.get(i5);
                                if (c().a(((SemanticsNode) obj).f)) {
                                    m(i4, (SemanticsNode) obj);
                                    i4++;
                                }
                            }
                        }
                    }
                    rect = Rect.e;
                    float f3 = rect.a;
                    float f22 = rect.b;
                    viewStructure.setDimens((int) f3, (int) f22, 0, 0, (int) (rect.c - f3), (int) (rect.d - f22));
                    viewStructureCompat = c2;
                    if (viewStructureCompat != null) {
                    }
                    List j2 = SemanticsNode.j(4, semanticsNode);
                    size = j2.size();
                    int i42 = 0;
                    while (i5 < size) {
                    }
                }
            }
        }
        viewStructureCompat = null;
        if (viewStructureCompat != null) {
        }
        List j22 = SemanticsNode.j(4, semanticsNode);
        size = j22.size();
        int i422 = 0;
        while (i5 < size) {
        }
    }

    public final void n(SemanticsNode semanticsNode) {
        if (d()) {
            this.m.add(new ContentCaptureEvent(semanticsNode.f, this.s, ContentCaptureEventType.k, null));
            List j = SemanticsNode.j(4, semanticsNode);
            int size = j.size();
            for (int i = 0; i < size; i++) {
                n((SemanticsNode) j.get(i));
            }
        }
    }

    public final void o() {
        MutableIntObjectMap mutableIntObjectMap = this.t;
        mutableIntObjectMap.c();
        IntObjectMap c = c();
        int[] iArr = c.b;
        Object[] objArr = c.c;
        long[] jArr = c.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            mutableIntObjectMap.i(iArr[i4], new SemanticsNodeCopy(((SemanticsNodeWithAdjustedBounds) objArr[i4]).a, c()));
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    }
                }
                if (i == length) {
                    break;
                } else {
                    i++;
                }
            }
        }
        this.u = new SemanticsNodeCopy(this.j.getSemanticsOwner().a(), c());
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStart(LifecycleOwner lifecycleOwner) {
        this.l = (ContentCaptureSessionWrapper) this.k.a();
        m(-1, this.j.getSemanticsOwner().a());
        e();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
        n(this.j.getSemanticsOwner().a());
        e();
        this.l = null;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        Handler handler = this.j.getHandler();
        handler.getClass();
        handler.removeCallbacks(this.w);
        this.l = null;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}

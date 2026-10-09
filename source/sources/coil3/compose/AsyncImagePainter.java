package coil3.compose;

import android.os.Trace;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import coil3.ExtrasKt;
import coil3.Image;
import coil3.ImageLoader;
import coil3.compose.AsyncImagePainter;
import coil3.compose.internal.DeferredDispatchKt;
import coil3.compose.internal.UtilsKt;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.request.ImageResult;
import coil3.request.SuccessResult;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.SizeResolver;
import coil3.target.Target;
import coil3.transition.NoneTransition$Factory;
import coil3.transition.Transition$Factory;
import defpackage.h;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AsyncImagePainter extends Painter implements RememberObserver {
    public static final h E = new h(15);
    public Input A;
    public final MutableStateFlow B;
    public final MutableStateFlow C;
    public final StateFlow D;
    public ColorFilter q;
    public boolean r;
    public Job s;
    public CoroutineScope u;
    public Function1 w;
    public AsyncImagePreviewHandler z;
    public final MutableState o = SnapshotStateKt.g(null);
    public float p = 1.0f;
    public long t = 9205357640488583168L;
    public Function1 v = E;
    public ContentScale x = ContentScale.Companion.b;
    public int y = 1;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Input {
        public final ImageLoader a;
        public final ImageRequest b;
        public final AsyncImageModelEqualityDelegate c;

        public Input(ImageLoader imageLoader, ImageRequest imageRequest, AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate) {
            this.a = imageLoader;
            this.b = imageRequest;
            this.c = asyncImageModelEqualityDelegate;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Input) {
                    Input input = (Input) obj;
                    if (this.a.equals(input.a)) {
                        AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate = input.c;
                        AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate2 = this.c;
                        if (Intrinsics.a(asyncImageModelEqualityDelegate2, asyncImageModelEqualityDelegate) && asyncImageModelEqualityDelegate2.a(this.b, input.b)) {
                            return true;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            int hashCode = this.a.hashCode() * 31;
            AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate = this.c;
            return asyncImageModelEqualityDelegate.b(this.b) + ((asyncImageModelEqualityDelegate.hashCode() + hashCode) * 31);
        }

        public final String toString() {
            return "Input(imageLoader=" + this.a + ", request=" + this.b + ", modelEqualityDelegate=" + this.c + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface State {

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Empty implements State {
            public static final Empty a = new Object();

            @Override // coil3.compose.AsyncImagePainter.State
            public final Painter a() {
                return null;
            }

            public final boolean equals(Object obj) {
                if (this == obj || (obj instanceof Empty)) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                return -1625786264;
            }

            public final String toString() {
                return "Empty";
            }
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Error implements State {
            public final ErrorResult a;
            private final Painter painter;

            public Error(Painter painter, ErrorResult errorResult) {
                this.painter = painter;
                this.a = errorResult;
            }

            public static Error b(Error error, Painter painter) {
                ErrorResult errorResult = error.a;
                error.getClass();
                return new Error(painter, errorResult);
            }

            @Override // coil3.compose.AsyncImagePainter.State
            public final Painter a() {
                return this.painter;
            }

            public final boolean equals(Object obj) {
                if (this != obj) {
                    if (obj instanceof Error) {
                        Error error = (Error) obj;
                        if (!Intrinsics.a(this.painter, error.painter) || !this.a.equals(error.a)) {
                            return false;
                        }
                        return true;
                    }
                    return false;
                }
                return true;
            }

            public final int hashCode() {
                int hashCode;
                Painter painter = this.painter;
                if (painter == null) {
                    hashCode = 0;
                } else {
                    hashCode = painter.hashCode();
                }
                return this.a.hashCode() + (hashCode * 31);
            }

            public final String toString() {
                return "Error(painter=" + this.painter + ", result=" + this.a + ")";
            }
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Loading implements State {
            private final Painter painter;

            public Loading(Painter painter) {
                this.painter = painter;
            }

            @Override // coil3.compose.AsyncImagePainter.State
            public final Painter a() {
                return this.painter;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof Loading) && Intrinsics.a(this.painter, ((Loading) obj).painter)) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                Painter painter = this.painter;
                if (painter == null) {
                    return 0;
                }
                return painter.hashCode();
            }

            public final String toString() {
                return "Loading(painter=" + this.painter + ")";
            }
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Success implements State {
            public final SuccessResult a;
            private final Painter painter;

            public Success(Painter painter, SuccessResult successResult) {
                this.painter = painter;
                this.a = successResult;
            }

            @Override // coil3.compose.AsyncImagePainter.State
            public final Painter a() {
                return this.painter;
            }

            public final boolean equals(Object obj) {
                if (this != obj) {
                    if (obj instanceof Success) {
                        Success success = (Success) obj;
                        if (!Intrinsics.a(this.painter, success.painter) || !this.a.equals(success.a)) {
                            return false;
                        }
                        return true;
                    }
                    return false;
                }
                return true;
            }

            public final int hashCode() {
                return this.a.hashCode() + (this.painter.hashCode() * 31);
            }

            public final String toString() {
                return "Success(painter=" + this.painter + ", result=" + this.a + ")";
            }
        }

        Painter a();
    }

    public AsyncImagePainter(Input input) {
        this.A = input;
        this.B = StateFlowKt.a(input);
        MutableStateFlow a = StateFlowKt.a(State.Empty.a);
        this.C = a;
        this.D = FlowKt.b(a);
    }

    public static final ImageRequest k(final AsyncImagePainter asyncImagePainter, final ImageRequest imageRequest, boolean z) {
        Scale scale;
        ImageRequest.Builder a = ImageRequest.a(imageRequest);
        a.d = new Target() { // from class: coil3.compose.AsyncImagePainter$updateRequest$$inlined$target$default$1
            @Override // coil3.target.Target
            public final void onStart(Image image) {
                Painter painter;
                Painter m;
                ImageRequest imageRequest2 = ImageRequest.this;
                AsyncImagePainter asyncImagePainter2 = asyncImagePainter;
                if (image != null) {
                    painter = ImagePainter_androidKt.a(image, imageRequest2.a, asyncImagePainter2.y);
                } else {
                    painter = null;
                }
                if (painter == null && ((Boolean) ExtrasKt.a(imageRequest2, ImageRequestsKt.a)).booleanValue() && (m = asyncImagePainter2.m()) != null) {
                    painter = m;
                }
                AsyncImagePainter.l(asyncImagePainter2, new AsyncImagePainter.State.Loading(painter));
            }

            @Override // coil3.target.Target
            public final void onError(Image image) {
            }

            @Override // coil3.target.Target
            public final void onSuccess(Image image) {
            }
        };
        ImageRequest.Defined defined = imageRequest.s;
        if (defined.g == null) {
            a.l = SizeResolver.a;
        }
        if (defined.h == null) {
            ContentScale contentScale = asyncImagePainter.x;
            int i = UtilsKt.b;
            if (!Intrinsics.a(contentScale, ContentScale.Companion.b) && !Intrinsics.a(contentScale, ContentScale.Companion.c)) {
                scale = Scale.j;
            } else {
                scale = Scale.k;
            }
            a.m = scale;
        }
        if (defined.i == null) {
            a.n = Precision.k;
        }
        if (z) {
            EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.j;
            a.f = emptyCoroutineContext;
            a.g = emptyCoroutineContext;
            a.h = emptyCoroutineContext;
        }
        return a.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void l(AsyncImagePainter asyncImagePainter, State state) {
        ImageResult imageResult;
        Function1 function1;
        RememberObserver rememberObserver;
        MutableStateFlow mutableStateFlow = asyncImagePainter.C;
        State state2 = (State) mutableStateFlow.getValue();
        State state3 = (State) asyncImagePainter.v.b(state);
        mutableStateFlow.setValue(state3);
        if (state3 instanceof State.Success) {
            imageResult = ((State.Success) state3).a;
        } else {
            if (state3 instanceof State.Error) {
                imageResult = ((State.Error) state3).a;
            }
            ((SnapshotMutableStateImpl) asyncImagePainter.o).setValue(state3.a());
            if (state2.a() != state3.a()) {
                Object a = state2.a();
                RememberObserver rememberObserver2 = null;
                if (a instanceof RememberObserver) {
                    rememberObserver = (RememberObserver) a;
                } else {
                    rememberObserver = null;
                }
                if (rememberObserver != null) {
                    rememberObserver.b();
                }
                Object a2 = state3.a();
                if (a2 instanceof RememberObserver) {
                    rememberObserver2 = (RememberObserver) a2;
                }
                if (rememberObserver2 != null) {
                    rememberObserver2.c();
                }
            }
            function1 = asyncImagePainter.w;
            if (function1 == null) {
                function1.b(state3);
                return;
            }
            return;
        }
        ((NoneTransition$Factory) ((Transition$Factory) ExtrasKt.a(imageResult.d(), ImageRequests_androidKt.a))).getClass();
        ((SnapshotMutableStateImpl) asyncImagePainter.o).setValue(state3.a());
        if (state2.a() != state3.a()) {
        }
        function1 = asyncImagePainter.w;
        if (function1 == null) {
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void a() {
        Job job = this.s;
        RememberObserver rememberObserver = null;
        if (job != null) {
            job.n(null);
        }
        this.s = null;
        Object m = m();
        if (m instanceof RememberObserver) {
            rememberObserver = (RememberObserver) m;
        }
        if (rememberObserver != null) {
            rememberObserver.a();
        }
        this.r = false;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void b() {
        Job job = this.s;
        RememberObserver rememberObserver = null;
        if (job != null) {
            job.n(null);
        }
        this.s = null;
        Object m = m();
        if (m instanceof RememberObserver) {
            rememberObserver = (RememberObserver) m;
        }
        if (rememberObserver != null) {
            rememberObserver.b();
        }
        this.r = false;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void c() {
        RememberObserver rememberObserver;
        Trace.beginSection("AsyncImagePainter.onRemembered");
        try {
            Object m = m();
            if (m instanceof RememberObserver) {
                rememberObserver = (RememberObserver) m;
            } else {
                rememberObserver = null;
            }
            if (rememberObserver != null) {
                rememberObserver.c();
            }
            Input input = this.A;
            if (input != null) {
                CoroutineScope coroutineScope = this.u;
                if (coroutineScope != null) {
                    Job a = DeferredDispatchKt.a(coroutineScope, new AsyncImagePainter$launchJob$1(this, input, null));
                    Job job = this.s;
                    if (job != null) {
                        job.n(null);
                    }
                    this.s = a;
                } else {
                    Intrinsics.e("scope");
                    throw null;
                }
            }
            this.r = true;
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean d(float f) {
        this.p = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean e(ColorFilter colorFilter) {
        this.q = colorFilter;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final long i() {
        Painter m = m();
        if (m != null) {
            return m.i();
        }
        return 9205357640488583168L;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
        long i = canvasDrawScope.i();
        if (!Size.a(this.t, i)) {
            this.t = i;
        }
        Painter m = m();
        if (m != null) {
            m.g(layoutNodeDrawScope, canvasDrawScope.i(), this.p, this.q);
        }
    }

    public final Painter m() {
        return (Painter) ((SnapshotMutableStateImpl) this.o).getValue();
    }

    public final void n(Input input) {
        if (!Intrinsics.a(this.A, input)) {
            this.A = input;
            if (input == null) {
                Job job = this.s;
                if (job != null) {
                    job.n(null);
                }
                this.s = null;
            } else if (this.r && input != null) {
                CoroutineScope coroutineScope = this.u;
                if (coroutineScope != null) {
                    Job a = DeferredDispatchKt.a(coroutineScope, new AsyncImagePainter$launchJob$1(this, input, null));
                    Job job2 = this.s;
                    if (job2 != null) {
                        job2.n(null);
                    }
                    this.s = a;
                } else {
                    Intrinsics.e("scope");
                    throw null;
                }
            }
            if (input != null) {
                this.B.setValue(input);
            }
        }
    }
}

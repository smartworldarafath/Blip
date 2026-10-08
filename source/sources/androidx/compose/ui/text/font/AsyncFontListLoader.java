package androidx.compose.ui.text.font;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.text.font.TypefaceResult;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.YieldKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AsyncFontListLoader implements State<Object> {
    public final List j;
    public final TypefaceRequest k;
    public final Function1 l;
    public final MutableState m;
    public boolean n = true;

    public AsyncFontListLoader(List list, Object obj, TypefaceRequest typefaceRequest, AsyncTypefaceCache asyncTypefaceCache, Function1 function1, AndroidFontLoader androidFontLoader) {
        this.j = list;
        this.k = typefaceRequest;
        this.l = function1;
        this.m = SnapshotStateKt.g(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x009d A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:16:0x009d, B:24:0x004a, B:26:0x004f, B:28:0x007b, B:33:0x0093), top: B:7:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x009d -> B:14:0x00a8). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(ContinuationImpl continuationImpl) {
        AsyncFontListLoader$load$1 asyncFontListLoader$load$1;
        int i;
        Function1 function1;
        MutableState mutableState;
        int size;
        List list;
        int i2;
        TypefaceResult.Immutable immutable;
        try {
            if (continuationImpl instanceof AsyncFontListLoader$load$1) {
                asyncFontListLoader$load$1 = (AsyncFontListLoader$load$1) continuationImpl;
                int i3 = asyncFontListLoader$load$1.s;
                if ((i3 & Integer.MIN_VALUE) != 0) {
                    asyncFontListLoader$load$1.s = i3 - Integer.MIN_VALUE;
                    Object obj = asyncFontListLoader$load$1.q;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = asyncFontListLoader$load$1.s;
                    Unit unit = Unit.a;
                    function1 = this.l;
                    mutableState = this.m;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                size = asyncFontListLoader$load$1.p;
                                i2 = asyncFontListLoader$load$1.o;
                                list = asyncFontListLoader$load$1.m;
                                ResultKt.b(obj);
                            } else {
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                        } else {
                            int i4 = asyncFontListLoader$load$1.p;
                            int i5 = asyncFontListLoader$load$1.o;
                            Font font = asyncFontListLoader$load$1.n;
                            List list2 = asyncFontListLoader$load$1.m;
                            ResultKt.b(obj);
                            if (obj != null) {
                                TypefaceRequest typefaceRequest = this.k;
                                ((SnapshotMutableStateImpl) mutableState).setValue(FontSynthesis_androidKt.a(typefaceRequest.d, obj, font, typefaceRequest.b, typefaceRequest.c));
                                CoroutineContext coroutineContext = asyncFontListLoader$load$1.k;
                                coroutineContext.getClass();
                                boolean f = JobKt.f(coroutineContext);
                                this.n = false;
                                immutable = new TypefaceResult.Immutable(((SnapshotMutableStateImpl) mutableState).getValue(), f);
                                function1.b(immutable);
                                return unit;
                            }
                            asyncFontListLoader$load$1.m = list2;
                            asyncFontListLoader$load$1.n = null;
                            asyncFontListLoader$load$1.o = i5;
                            asyncFontListLoader$load$1.p = i4;
                            asyncFontListLoader$load$1.s = 2;
                            if (YieldKt.a(asyncFontListLoader$load$1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            size = i4;
                            i2 = i5;
                            list = list2;
                        }
                        i2++;
                        if (i2 < size) {
                            ((ResourceFont) ((Font) list.get(i2))).getClass();
                            i2++;
                            if (i2 < size) {
                                CoroutineContext coroutineContext2 = asyncFontListLoader$load$1.k;
                                coroutineContext2.getClass();
                                boolean f2 = JobKt.f(coroutineContext2);
                                this.n = false;
                                immutable = new TypefaceResult.Immutable(((SnapshotMutableStateImpl) mutableState).getValue(), f2);
                                function1.b(immutable);
                                return unit;
                            }
                        }
                    } else {
                        ResultKt.b(obj);
                        List list3 = this.j;
                        size = list3.size();
                        list = list3;
                        i2 = 0;
                        if (i2 < size) {
                        }
                    }
                }
            }
            if (i == 0) {
            }
        } catch (Throwable th) {
            CoroutineContext coroutineContext3 = asyncFontListLoader$load$1.k;
            coroutineContext3.getClass();
            boolean f3 = JobKt.f(coroutineContext3);
            this.n = false;
            function1.b(new TypefaceResult.Immutable(((SnapshotMutableStateImpl) mutableState).getValue(), f3));
            throw th;
        }
        asyncFontListLoader$load$1 = new AsyncFontListLoader$load$1(this, continuationImpl);
        Object obj2 = asyncFontListLoader$load$1.q;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = asyncFontListLoader$load$1.s;
        Unit unit2 = Unit.a;
        function1 = this.l;
        mutableState = this.m;
    }

    @Override // androidx.compose.runtime.State
    public final Object getValue() {
        return ((SnapshotMutableStateImpl) this.m).getValue();
    }
}

package coil3.request;

import android.content.Context;
import coil3.Extras;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.SizeResolver;
import coil3.target.Target;
import coil3.util.Collections_jvmCommonKt;
import coil3.util.UtilsKt;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okio.FileSystem;
import okio.JvmSystemFileSystem;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ImageRequest {
    public final Context a;
    public final Object b;
    public final Target c;
    public final Map d;
    public final FileSystem e;
    public final CoroutineContext f;
    public final CoroutineContext g;
    public final CoroutineContext h;
    public final CachePolicy i;
    public final CachePolicy j;
    public final CachePolicy k;
    public final Function1 l;
    public final Function1 m;
    public final Function1 n;
    public final SizeResolver o;
    public final Scale p;
    public final Precision q;
    public final Extras r;
    public final Defined s;
    public final Defaults t;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Defaults {
        public static final Defaults o;
        public final FileSystem a;
        public final CoroutineContext b;
        public final CoroutineContext c;
        public final CoroutineContext d;
        public final CachePolicy e;
        public final CachePolicy f;
        public final CachePolicy g;
        public final Function1 h;
        public final Function1 i;
        public final Function1 j;
        public final SizeResolver k;
        public final Scale l;
        public final Precision m;
        public final Extras n;

        static {
            JvmSystemFileSystem jvmSystemFileSystem = FileSystem.j;
            DefaultScheduler defaultScheduler = Dispatchers.a;
            DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.l;
            CachePolicy cachePolicy = CachePolicy.l;
            o = new Defaults(jvmSystemFileSystem, EmptyCoroutineContext.j, defaultIoScheduler, defaultIoScheduler, cachePolicy, cachePolicy, cachePolicy, UtilsKt.b(), UtilsKt.b(), UtilsKt.b(), SizeResolver.a, Scale.k, Precision.j, Extras.b);
        }

        public Defaults(FileSystem fileSystem, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Function1 function1, Function1 function12, Function1 function13, SizeResolver sizeResolver, Scale scale, Precision precision, Extras extras) {
            this.a = fileSystem;
            this.b = coroutineContext;
            this.c = coroutineContext2;
            this.d = coroutineContext3;
            this.e = cachePolicy;
            this.f = cachePolicy2;
            this.g = cachePolicy3;
            this.h = function1;
            this.i = function12;
            this.j = function13;
            this.k = sizeResolver;
            this.l = scale;
            this.m = precision;
            this.n = extras;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Defaults)) {
                return false;
            }
            Defaults defaults = (Defaults) obj;
            if (Intrinsics.a(this.a, defaults.a) && Intrinsics.a(this.b, defaults.b) && Intrinsics.a(this.c, defaults.c) && Intrinsics.a(this.d, defaults.d) && this.e == defaults.e && this.f == defaults.f && this.g == defaults.g && Intrinsics.a(this.h, defaults.h) && Intrinsics.a(this.i, defaults.i) && Intrinsics.a(this.j, defaults.j) && Intrinsics.a(this.k, defaults.k) && this.l == defaults.l && this.m == defaults.m && Intrinsics.a(this.n, defaults.n)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.n.a.hashCode() + ((this.m.hashCode() + ((this.l.hashCode() + ((this.k.hashCode() + ((this.j.hashCode() + ((this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
        }

        public final String toString() {
            return "Defaults(fileSystem=" + this.a + ", interceptorCoroutineContext=" + this.b + ", fetcherCoroutineContext=" + this.c + ", decoderCoroutineContext=" + this.d + ", memoryCachePolicy=" + this.e + ", diskCachePolicy=" + this.f + ", networkCachePolicy=" + this.g + ", placeholderFactory=" + this.h + ", errorFactory=" + this.i + ", fallbackFactory=" + this.j + ", sizeResolver=" + this.k + ", scale=" + this.l + ", precision=" + this.m + ", extras=" + this.n + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Defined {
        public final CoroutineContext a;
        public final CoroutineContext b;
        public final CoroutineContext c;
        public final Function1 d;
        public final Function1 e;
        public final Function1 f;
        public final SizeResolver g;
        public final Scale h;
        public final Precision i;

        public Defined(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, Function1 function1, Function1 function12, Function1 function13, SizeResolver sizeResolver, Scale scale, Precision precision) {
            this.a = coroutineContext;
            this.b = coroutineContext2;
            this.c = coroutineContext3;
            this.d = function1;
            this.e = function12;
            this.f = function13;
            this.g = sizeResolver;
            this.h = scale;
            this.i = precision;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Defined) {
                    Defined defined = (Defined) obj;
                    if (!Intrinsics.a(this.a, defined.a) || !Intrinsics.a(this.b, defined.b) || !Intrinsics.a(this.c, defined.c) || !Intrinsics.a(this.d, defined.d) || !Intrinsics.a(this.e, defined.e) || !Intrinsics.a(this.f, defined.f) || !Intrinsics.a(this.g, defined.g) || this.h != defined.h || this.i != defined.i) {
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
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int hashCode5;
            int hashCode6;
            int hashCode7;
            int hashCode8;
            int i = 0;
            CoroutineContext coroutineContext = this.a;
            if (coroutineContext == null) {
                hashCode = 0;
            } else {
                hashCode = coroutineContext.hashCode();
            }
            int i2 = hashCode * 31;
            CoroutineContext coroutineContext2 = this.b;
            if (coroutineContext2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = coroutineContext2.hashCode();
            }
            int i3 = (i2 + hashCode2) * 31;
            CoroutineContext coroutineContext3 = this.c;
            if (coroutineContext3 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = coroutineContext3.hashCode();
            }
            int i4 = (i3 + hashCode3) * 923521;
            Function1 function1 = this.d;
            if (function1 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = function1.hashCode();
            }
            int i5 = (i4 + hashCode4) * 31;
            Function1 function12 = this.e;
            if (function12 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = function12.hashCode();
            }
            int i6 = (i5 + hashCode5) * 31;
            Function1 function13 = this.f;
            if (function13 == null) {
                hashCode6 = 0;
            } else {
                hashCode6 = function13.hashCode();
            }
            int i7 = (i6 + hashCode6) * 31;
            SizeResolver sizeResolver = this.g;
            if (sizeResolver == null) {
                hashCode7 = 0;
            } else {
                hashCode7 = sizeResolver.hashCode();
            }
            int i8 = (i7 + hashCode7) * 31;
            Scale scale = this.h;
            if (scale == null) {
                hashCode8 = 0;
            } else {
                hashCode8 = scale.hashCode();
            }
            int i9 = (i8 + hashCode8) * 31;
            Precision precision = this.i;
            if (precision != null) {
                i = precision.hashCode();
            }
            return i9 + i;
        }

        public final String toString() {
            return "Defined(fileSystem=null, interceptorCoroutineContext=" + this.a + ", fetcherCoroutineContext=" + this.b + ", decoderCoroutineContext=" + this.c + ", memoryCachePolicy=null, diskCachePolicy=null, networkCachePolicy=null, placeholderFactory=" + this.d + ", errorFactory=" + this.e + ", fallbackFactory=" + this.f + ", sizeResolver=" + this.g + ", scale=" + this.h + ", precision=" + this.i + ")";
        }
    }

    public ImageRequest(Context context, Object obj, Target target, Map map, FileSystem fileSystem, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Function1 function1, Function1 function12, Function1 function13, SizeResolver sizeResolver, Scale scale, Precision precision, Extras extras, Defined defined, Defaults defaults) {
        this.a = context;
        this.b = obj;
        this.c = target;
        this.d = map;
        this.e = fileSystem;
        this.f = coroutineContext;
        this.g = coroutineContext2;
        this.h = coroutineContext3;
        this.i = cachePolicy;
        this.j = cachePolicy2;
        this.k = cachePolicy3;
        this.l = function1;
        this.m = function12;
        this.n = function13;
        this.o = sizeResolver;
        this.p = scale;
        this.q = precision;
        this.r = extras;
        this.s = defined;
        this.t = defaults;
    }

    public static Builder a(ImageRequest imageRequest) {
        Context context = imageRequest.a;
        imageRequest.getClass();
        return new Builder(imageRequest, context);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ImageRequest) {
                ImageRequest imageRequest = (ImageRequest) obj;
                if (!Intrinsics.a(this.a, imageRequest.a) || !this.b.equals(imageRequest.b) || !Intrinsics.a(this.c, imageRequest.c) || !this.d.equals(imageRequest.d) || !Intrinsics.a(this.e, imageRequest.e) || !Intrinsics.a(this.f, imageRequest.f) || !Intrinsics.a(this.g, imageRequest.g) || !Intrinsics.a(this.h, imageRequest.h) || this.i != imageRequest.i || this.j != imageRequest.j || this.k != imageRequest.k || !Intrinsics.a(this.l, imageRequest.l) || !Intrinsics.a(this.m, imageRequest.m) || !Intrinsics.a(this.n, imageRequest.n) || !Intrinsics.a(this.o, imageRequest.o) || this.p != imageRequest.p || this.q != imageRequest.q || !this.r.equals(imageRequest.r) || !this.s.equals(imageRequest.s) || !Intrinsics.a(this.t, imageRequest.t)) {
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
        int hashCode2 = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        Target target = this.c;
        if (target == null) {
            hashCode = 0;
        } else {
            hashCode = target.hashCode();
        }
        return this.t.hashCode() + ((this.s.hashCode() + ((this.r.a.hashCode() + ((this.q.hashCode() + ((this.p.hashCode() + ((this.o.hashCode() + ((this.n.hashCode() + ((this.m.hashCode() + ((this.l.hashCode() + ((this.k.hashCode() + ((this.j.hashCode() + ((this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((hashCode2 + hashCode) * 29791)) * 961)) * 29791)) * 31)) * 31)) * 31)) * 31)) * 31)) * 961)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ImageRequest(context=" + this.a + ", data=" + this.b + ", target=" + this.c + ", listener=null, memoryCacheKey=null, memoryCacheKeyExtras=" + this.d + ", diskCacheKey=null, fileSystem=" + this.e + ", fetcherFactory=null, decoderFactory=null, interceptorCoroutineContext=" + this.f + ", fetcherCoroutineContext=" + this.g + ", decoderCoroutineContext=" + this.h + ", memoryCachePolicy=" + this.i + ", diskCachePolicy=" + this.j + ", networkCachePolicy=" + this.k + ", placeholderMemoryCacheKey=null, placeholderFactory=" + this.l + ", errorFactory=" + this.m + ", fallbackFactory=" + this.n + ", sizeResolver=" + this.o + ", scale=" + this.p + ", precision=" + this.q + ", extras=" + this.r + ", defined=" + this.s + ", defaults=" + this.t + ")";
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final Context a;
        public Defaults b;
        public Object c;
        public Target d;
        public final Map e;
        public CoroutineContext f;
        public CoroutineContext g;
        public CoroutineContext h;
        public final Function1 i;
        public final Function1 j;
        public final Function1 k;
        public SizeResolver l;
        public Scale m;
        public Precision n;
        public Object o;

        public Builder(ImageRequest imageRequest, Context context) {
            this.a = context;
            this.b = imageRequest.t;
            this.c = imageRequest.b;
            this.d = imageRequest.c;
            this.e = imageRequest.d;
            Defined defined = imageRequest.s;
            this.f = defined.a;
            this.g = defined.b;
            this.h = defined.c;
            this.i = defined.d;
            this.j = defined.e;
            this.k = defined.f;
            this.l = defined.g;
            this.m = defined.h;
            this.n = defined.i;
            this.o = imageRequest.r;
        }

        public final ImageRequest a() {
            Extras extras;
            Object obj = this.c;
            if (obj == null) {
                obj = NullRequestData.a;
            }
            Object obj2 = obj;
            Target target = this.d;
            Boolean bool = Boolean.FALSE;
            Map map = this.e;
            if (Intrinsics.a(map, bool)) {
                map.getClass();
                map = Collections_jvmCommonKt.b(TypeIntrinsics.b(map));
            } else if (map == null) {
                throw new AssertionError();
            }
            Map map2 = map;
            map2.getClass();
            Defaults defaults = this.b;
            FileSystem fileSystem = defaults.a;
            CachePolicy cachePolicy = defaults.e;
            CachePolicy cachePolicy2 = defaults.f;
            CachePolicy cachePolicy3 = defaults.g;
            CoroutineContext coroutineContext = this.f;
            if (coroutineContext == null) {
                coroutineContext = defaults.b;
            }
            CoroutineContext coroutineContext2 = coroutineContext;
            CoroutineContext coroutineContext3 = this.g;
            if (coroutineContext3 == null) {
                coroutineContext3 = defaults.c;
            }
            CoroutineContext coroutineContext4 = coroutineContext3;
            CoroutineContext coroutineContext5 = this.h;
            if (coroutineContext5 == null) {
                coroutineContext5 = defaults.d;
            }
            CoroutineContext coroutineContext6 = coroutineContext5;
            Function1 function1 = this.i;
            if (function1 == null) {
                function1 = defaults.h;
            }
            Function1 function12 = function1;
            Function1 function13 = this.j;
            if (function13 == null) {
                function13 = defaults.i;
            }
            Function1 function14 = function13;
            Function1 function15 = this.k;
            if (function15 == null) {
                function15 = defaults.j;
            }
            Function1 function16 = function15;
            SizeResolver sizeResolver = this.l;
            if (sizeResolver == null) {
                sizeResolver = defaults.k;
            }
            SizeResolver sizeResolver2 = sizeResolver;
            Scale scale = this.m;
            if (scale == null) {
                scale = defaults.l;
            }
            Scale scale2 = scale;
            Precision precision = this.n;
            if (precision == null) {
                precision = defaults.m;
            }
            Precision precision2 = precision;
            Object obj3 = this.o;
            if (obj3 instanceof Extras.Builder) {
                extras = ((Extras.Builder) obj3).a();
            } else if (obj3 instanceof Extras) {
                extras = (Extras) obj3;
            } else {
                throw new AssertionError();
            }
            return new ImageRequest(this.a, obj2, target, map2, fileSystem, coroutineContext2, coroutineContext4, coroutineContext6, cachePolicy, cachePolicy2, cachePolicy3, function12, function14, function16, sizeResolver2, scale2, precision2, extras, new Defined(this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n), this.b);
        }

        public Builder(Context context) {
            Map map;
            this.a = context;
            this.b = Defaults.o;
            this.c = null;
            this.d = null;
            map = EmptyMap.j;
            this.e = map;
            this.f = null;
            this.g = null;
            this.h = null;
            this.i = UtilsKt.b();
            this.j = UtilsKt.b();
            this.k = UtilsKt.b();
            this.l = null;
            this.m = null;
            this.n = null;
            this.o = Extras.b;
        }
    }
}

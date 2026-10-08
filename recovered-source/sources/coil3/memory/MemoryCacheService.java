package coil3.memory;

import android.graphics.Bitmap;
import coil3.BitmapImage;
import coil3.EventListener;
import coil3.ExtrasKt;
import coil3.Image;
import coil3.RealImageLoader;
import coil3.key.Keyer;
import coil3.memory.MemoryCache;
import coil3.memory.RealStrongMemoryCache;
import coil3.memory.RealWeakMemoryCache;
import coil3.request.AndroidRequestService;
import coil3.request.CachePolicy;
import coil3.request.ImageRequest;
import coil3.request.ImageRequestsKt;
import coil3.request.Options;
import coil3.size.Dimension;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import defpackage.k8;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MemoryCacheService {
    public final RealImageLoader a;

    public MemoryCacheService(RealImageLoader realImageLoader, AndroidRequestService androidRequestService) {
        this.a = realImageLoader;
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x01c2, code lost:
    
        if (r12 <= 1.0d) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01cb, code lost:
    
        if (r12 == 1.0d) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00f5, code lost:
    
        if (r1.equals(r20.toString()) != false) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01cf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final MemoryCache.Value a(ImageRequest imageRequest, MemoryCache.Key key, Size size, Scale scale) {
        MemoryCache.Value value;
        BitmapImage bitmapImage;
        boolean b;
        Boolean bool;
        boolean z;
        Size size2;
        int i;
        int i2;
        int i3;
        int i4;
        MemoryCache.Value value2;
        Scale scale2;
        int abs;
        boolean z2;
        MemoryCache.Value value3;
        CachePolicy cachePolicy = imageRequest.i;
        Precision precision = imageRequest.q;
        if (cachePolicy.j) {
            MemoryCache d = this.a.d();
            if (d != null) {
                RealMemoryCache realMemoryCache = (RealMemoryCache) d;
                synchronized (realMemoryCache.c) {
                    try {
                        RealStrongMemoryCache.InternalValue internalValue = (RealStrongMemoryCache.InternalValue) realMemoryCache.a.c.a.get(key);
                        if (internalValue != null) {
                            value = new MemoryCache.Value(internalValue.a, internalValue.b);
                        } else {
                            value = null;
                        }
                        if (value == null) {
                            RealWeakMemoryCache realWeakMemoryCache = realMemoryCache.b;
                            ArrayList arrayList = (ArrayList) realWeakMemoryCache.a.get(key);
                            if (arrayList == null) {
                                value = null;
                            } else {
                                int size3 = arrayList.size();
                                int i5 = 0;
                                while (true) {
                                    if (i5 < size3) {
                                        RealWeakMemoryCache.InternalValue internalValue2 = (RealWeakMemoryCache.InternalValue) arrayList.get(i5);
                                        Image image = (Image) internalValue2.a.get();
                                        if (image != null) {
                                            value3 = new MemoryCache.Value(image, internalValue2.b);
                                        } else {
                                            value3 = null;
                                        }
                                        if (value3 != null) {
                                            break;
                                        }
                                        i5++;
                                    } else {
                                        value3 = null;
                                        break;
                                    }
                                }
                                realWeakMemoryCache.a();
                                value = value3;
                            }
                        }
                        if (value != null && !value.a.j()) {
                            synchronized (realMemoryCache.c) {
                                RealStrongMemoryCache$cache$1 realStrongMemoryCache$cache$1 = realMemoryCache.a.c;
                                Object remove = realStrongMemoryCache$cache$1.a.remove(key);
                                if (remove != null) {
                                    realStrongMemoryCache$cache$1.c = realStrongMemoryCache$cache$1.b() - realStrongMemoryCache$cache$1.c(key, remove);
                                    realStrongMemoryCache$cache$1.a(key, remove, null);
                                }
                                if (remove != null) {
                                }
                                if (realMemoryCache.b.a.remove(key) != null) {
                                }
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } else {
                value = null;
            }
            if (value != null) {
                Image image2 = value.a;
                if (image2 instanceof BitmapImage) {
                    bitmapImage = (BitmapImage) image2;
                } else {
                    bitmapImage = null;
                }
                if (bitmapImage == null) {
                    b = true;
                } else {
                    Bitmap.Config config = bitmapImage.a.getConfig();
                    if (config == null) {
                        config = Bitmap.Config.ARGB_8888;
                    }
                    b = AndroidRequestService.b(imageRequest, config);
                }
                if (b) {
                    String str = (String) key.b.get("coil#size");
                    if (str == null) {
                        Object obj = value.b.get("coil#is_sampled");
                        if (obj instanceof Boolean) {
                            bool = (Boolean) obj;
                        } else {
                            bool = null;
                        }
                        if (bool != null) {
                            z = bool.booleanValue();
                        } else {
                            z = false;
                        }
                        if (z || (!Intrinsics.a(size, Size.c) && precision != Precision.k)) {
                            int b2 = image2.b();
                            int a = image2.a();
                            if (image2 instanceof BitmapImage) {
                                size2 = (Size) ExtrasKt.a(imageRequest, ImageRequestsKt.b);
                            } else {
                                size2 = Size.c;
                            }
                            Dimension dimension = size.a;
                            if (dimension instanceof Dimension.Pixels) {
                                i = ((Dimension.Pixels) dimension).a;
                            } else {
                                i = Integer.MAX_VALUE;
                            }
                            Dimension dimension2 = size2.a;
                            if (dimension2 instanceof Dimension.Pixels) {
                                i2 = ((Dimension.Pixels) dimension2).a;
                            } else {
                                i2 = Integer.MAX_VALUE;
                            }
                            int min = Math.min(i, i2);
                            Dimension dimension3 = size.b;
                            if (dimension3 instanceof Dimension.Pixels) {
                                i3 = ((Dimension.Pixels) dimension3).a;
                            } else {
                                i3 = Integer.MAX_VALUE;
                            }
                            Dimension dimension4 = size2.b;
                            if (dimension4 instanceof Dimension.Pixels) {
                                i4 = ((Dimension.Pixels) dimension4).a;
                            } else {
                                i4 = Integer.MAX_VALUE;
                            }
                            int min2 = Math.min(i3, i4);
                            double d2 = min / b2;
                            value2 = null;
                            double d3 = min2 / a;
                            if (min != Integer.MAX_VALUE && min2 != Integer.MAX_VALUE) {
                                scale2 = scale;
                            } else {
                                scale2 = Scale.k;
                            }
                            int ordinal = scale2.ordinal();
                            if (ordinal != 0) {
                                if (ordinal == 1) {
                                    if (d2 < d3) {
                                        abs = Math.abs(min - b2);
                                        z2 = true;
                                        if (abs > 1) {
                                            int ordinal2 = precision.ordinal();
                                            if (ordinal2 != 0) {
                                                if (ordinal2 != 1) {
                                                    k8.e();
                                                    return null;
                                                }
                                            }
                                        }
                                        if (!z2) {
                                            return value;
                                        }
                                        return value2;
                                    }
                                    abs = Math.abs(min2 - a);
                                    d2 = d3;
                                    z2 = true;
                                    if (abs > 1) {
                                    }
                                    if (!z2) {
                                    }
                                } else {
                                    k8.e();
                                    return null;
                                }
                            } else if (d2 > d3) {
                                abs = Math.abs(min - b2);
                                z2 = true;
                                if (abs > 1) {
                                }
                                if (!z2) {
                                }
                            } else {
                                abs = Math.abs(min2 - a);
                                d2 = d3;
                                z2 = true;
                                if (abs > 1) {
                                }
                                if (!z2) {
                                }
                            }
                        }
                    }
                    value2 = null;
                    z2 = true;
                    if (!z2) {
                    }
                }
                value2 = null;
                z2 = false;
                if (!z2) {
                }
            }
        }
        return null;
    }

    public final MemoryCache.Key b(ImageRequest imageRequest, Object obj, Options options, EventListener eventListener) {
        String str;
        CachePolicy cachePolicy = imageRequest.i;
        Map map = imageRequest.d;
        if (cachePolicy != CachePolicy.m) {
            List list = this.a.d.c;
            int size = list.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    Pair pair = (Pair) list.get(i);
                    Keyer keyer = (Keyer) pair.j;
                    if (((ClassReference) ((KClass) pair.k)).d(obj)) {
                        keyer.getClass();
                        str = keyer.a(obj, options);
                        if (str != null) {
                            break;
                        }
                    }
                    i++;
                } else {
                    str = null;
                    break;
                }
            }
            if (str != null) {
                if (!((List) ExtrasKt.a(imageRequest, ImageRequestsKt.a)).isEmpty()) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap(map);
                    linkedHashMap.put("coil#size", options.b.toString());
                    return new MemoryCache.Key(str, linkedHashMap);
                }
                return new MemoryCache.Key(str, map);
            }
        }
        return null;
    }
}

package androidx.core.provider;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.provider.FontRequestWorker;
import androidx.core.util.Consumer;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FontsContractCompat {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class FontRequestCallback {
    }

    public static FontFamilyResult a(Context context, FontRequest fontRequest) {
        ArrayList arrayList = new ArrayList(1);
        Object obj = new Object[]{fontRequest}[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        return FontProvider.a(context, Collections.unmodifiableList(arrayList));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [androidx.core.provider.RequestExecutor$ReplyRunnable, java.lang.Object, java.lang.Runnable] */
    public static Typeface b(final Context context, ArrayList arrayList, final int i, boolean z, int i2, Handler handler, TypefaceCompat.ResourcesCallbackAdapter resourcesCallbackAdapter) {
        Handler handler2;
        final CallbackWrapper callbackWrapper = new CallbackWrapper(resourcesCallbackAdapter, new RequestExecutor$HandlerExecutor(handler));
        if (z) {
            if (arrayList.size() <= 1) {
                final FontRequest fontRequest = (FontRequest) arrayList.get(0);
                LruCache lruCache = FontRequestWorker.a;
                ArrayList arrayList2 = new ArrayList(1);
                Object obj = new Object[]{fontRequest}[0];
                Objects.requireNonNull(obj);
                arrayList2.add(obj);
                final String a = FontRequestWorker.a(i, Collections.unmodifiableList(arrayList2));
                Typeface typeface = (Typeface) FontRequestWorker.a.a(a);
                if (typeface != null) {
                    callbackWrapper.a(new FontRequestWorker.TypefaceResult(typeface));
                    return typeface;
                }
                if (i2 == -1) {
                    ArrayList arrayList3 = new ArrayList(1);
                    Object obj2 = new Object[]{fontRequest}[0];
                    Objects.requireNonNull(obj2);
                    arrayList3.add(obj2);
                    FontRequestWorker.TypefaceResult b = FontRequestWorker.b(a, context, Collections.unmodifiableList(arrayList3), i);
                    callbackWrapper.a(b);
                    return b.a;
                }
                try {
                    try {
                        FontRequestWorker.TypefaceResult typefaceResult = (FontRequestWorker.TypefaceResult) FontRequestWorker.b.submit(new Callable<FontRequestWorker.TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.1
                            public final /* synthetic */ String a;
                            public final /* synthetic */ Context b;
                            public final /* synthetic */ FontRequest c;
                            public final /* synthetic */ int d;

                            public AnonymousClass1(final String a2, final Context context2, final FontRequest fontRequest2, final int i3) {
                                r1 = a2;
                                r2 = context2;
                                r3 = fontRequest2;
                                r4 = i3;
                            }

                            @Override // java.util.concurrent.Callable
                            public final TypefaceResult call() {
                                Object[] objArr = {r3};
                                ArrayList arrayList4 = new ArrayList(1);
                                Object obj3 = objArr[0];
                                Objects.requireNonNull(obj3);
                                arrayList4.add(obj3);
                                return FontRequestWorker.b(r1, r2, Collections.unmodifiableList(arrayList4), r4);
                            }
                        }).get(i2, TimeUnit.MILLISECONDS);
                        callbackWrapper.a(typefaceResult);
                        return typefaceResult.a;
                    } catch (InterruptedException e) {
                        throw e;
                    } catch (ExecutionException e2) {
                        throw new RuntimeException(e2);
                    } catch (TimeoutException unused) {
                        throw new InterruptedException("timeout");
                    }
                } catch (InterruptedException unused2) {
                    callbackWrapper.a(new FontRequestWorker.TypefaceResult(-3));
                    return null;
                }
            }
            u2.g("Fallbacks with blocking fetches are not supported for performance reasons");
            return null;
        }
        final String a2 = FontRequestWorker.a(i3, arrayList);
        Typeface typeface2 = (Typeface) FontRequestWorker.a.a(a2);
        if (typeface2 != null) {
            callbackWrapper.a(new FontRequestWorker.TypefaceResult(typeface2));
            return typeface2;
        }
        Consumer<FontRequestWorker.TypefaceResult> anonymousClass2 = new Consumer<FontRequestWorker.TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.2
            public AnonymousClass2() {
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj3) {
                TypefaceResult typefaceResult2 = (TypefaceResult) obj3;
                if (typefaceResult2 == null) {
                    typefaceResult2 = new TypefaceResult(-3);
                }
                CallbackWrapper.this.a(typefaceResult2);
            }
        };
        synchronized (FontRequestWorker.c) {
            try {
                SimpleArrayMap simpleArrayMap = FontRequestWorker.d;
                ArrayList arrayList4 = (ArrayList) simpleArrayMap.get(a2);
                if (arrayList4 != null) {
                    arrayList4.add(anonymousClass2);
                    return null;
                }
                ArrayList arrayList5 = new ArrayList();
                arrayList5.add(anonymousClass2);
                simpleArrayMap.put(a2, arrayList5);
                FontRequestWorker.AnonymousClass3 anonymousClass3 = new FontRequestWorker.AnonymousClass3(a2, context2, arrayList, i3);
                ThreadPoolExecutor threadPoolExecutor = FontRequestWorker.b;
                Consumer<FontRequestWorker.TypefaceResult> anonymousClass4 = new Consumer<FontRequestWorker.TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.4
                    public final /* synthetic */ String a;

                    public AnonymousClass4(final String a22) {
                        r1 = a22;
                    }

                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj3) {
                        TypefaceResult typefaceResult2 = (TypefaceResult) obj3;
                        synchronized (FontRequestWorker.c) {
                            try {
                                SimpleArrayMap simpleArrayMap2 = FontRequestWorker.d;
                                ArrayList arrayList6 = (ArrayList) simpleArrayMap2.get(r1);
                                if (arrayList6 == null) {
                                    return;
                                }
                                simpleArrayMap2.remove(r1);
                                for (int i3 = 0; i3 < arrayList6.size(); i3++) {
                                    ((Consumer) arrayList6.get(i3)).accept(typefaceResult2);
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                };
                if (Looper.myLooper() == null) {
                    handler2 = new Handler(Looper.getMainLooper());
                } else {
                    handler2 = new Handler();
                }
                ?? obj3 = new Object();
                obj3.j = anonymousClass3;
                obj3.k = anonymousClass4;
                obj3.l = handler2;
                threadPoolExecutor.execute(obj3);
                return null;
            } finally {
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class FontFamilyResult {
        public final int a;
        public final List b;

        public FontFamilyResult() {
            this.a = 1;
            this.b = Collections.singletonList(null);
        }

        public FontFamilyResult(ArrayList arrayList) {
            this.a = 0;
            this.b = arrayList;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class FontInfo {
        public final Uri a;
        public final int b;
        public final int c;
        public final boolean d;
        public final String e;
        public final int f;

        public FontInfo(String str, String str2) {
            this.a = new Uri.Builder().scheme("systemfont").authority(str).build();
            this.b = 0;
            this.c = 400;
            this.d = false;
            this.e = str2;
            this.f = 0;
        }

        public FontInfo(Uri uri, int i, int i2, boolean z, String str, int i3) {
            uri.getClass();
            this.a = uri;
            this.b = i;
            this.c = i2;
            this.d = z;
            this.e = str;
            this.f = i3;
        }
    }
}

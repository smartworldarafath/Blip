package net.blip.android.ui.navigation;

import android.net.Uri;
import defpackage.jb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.AbstractCollection;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.internal.CharArrayPool;
import kotlinx.serialization.json.internal.Composer;
import kotlinx.serialization.json.internal.StreamingJsonEncoder;
import kotlinx.serialization.json.internal.WriteMode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Screens {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Gallery extends Screens {
        /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, kotlinx.serialization.json.internal.JsonToStringWriter] */
        public static String a(List list) {
            char[] cArr;
            Object removeLast;
            Json.Default r0 = Json.d;
            ArrayList arrayList = new ArrayList(CollectionsKt.m(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((Uri) it.next()).toString());
            }
            r0.getClass();
            ArrayListSerializer arrayListSerializer = new ArrayListSerializer(StringSerializer.a);
            ?? obj = new Object();
            CharArrayPool charArrayPool = CharArrayPool.c;
            synchronized (charArrayPool) {
                ArrayDeque arrayDeque = charArrayPool.a;
                cArr = null;
                if (arrayDeque.isEmpty()) {
                    removeLast = null;
                } else {
                    removeLast = arrayDeque.removeLast();
                }
                char[] cArr2 = (char[]) removeLast;
                if (cArr2 != null) {
                    charArrayPool.b -= cArr2.length;
                    cArr = cArr2;
                }
            }
            if (cArr == null) {
                cArr = new char[128];
            }
            obj.a = cArr;
            try {
                new StreamingJsonEncoder(new Composer(obj), r0, WriteMode.l, new JsonEncoder[((AbstractCollection) WriteMode.q).b()]).d(arrayListSerializer, arrayList);
                String jsonToStringWriter = obj.toString();
                obj.b();
                return jb.f("gallery/", Uri.encode(jsonToStringWriter));
            } catch (Throwable th) {
                obj.b();
                throw th;
            }
        }
    }
}

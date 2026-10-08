package com.google.firebase.components;

import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.events.Publisher;
import com.google.firebase.events.Subscriber;
import defpackage.f7;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class EventBus implements Subscriber, Publisher {
    public final HashMap a = new HashMap();
    public ArrayDeque b = new ArrayDeque();
    public final Executor c;

    public EventBus(Executor executor) {
        this.c = executor;
    }

    @Override // com.google.firebase.events.Subscriber
    public final void a(f7 f7Var) {
        Executor executor = this.c;
        synchronized (this) {
            try {
                executor.getClass();
                if (!this.a.containsKey(DataCollectionDefaultChange.class)) {
                    this.a.put(DataCollectionDefaultChange.class, new ConcurrentHashMap());
                }
                ((ConcurrentHashMap) this.a.get(DataCollectionDefaultChange.class)).put(f7Var, executor);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

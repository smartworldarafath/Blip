package com.google.firebase.components;

import android.util.Log;
import com.google.firebase.concurrent.UiExecutor;
import com.google.firebase.dynamicloading.ComponentLoader;
import com.google.firebase.events.Publisher;
import com.google.firebase.events.Subscriber;
import com.google.firebase.inject.Provider;
import defpackage.f7;
import defpackage.q5;
import io.sentry.d;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ComponentRuntime implements ComponentContainer, ComponentLoader {
    public static final q5 h = new q5(0);
    public final EventBus e;
    public final ComponentRegistrarProcessor g;
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public final HashSet d = new HashSet();
    public final AtomicReference f = new AtomicReference();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final UiExecutor a;
        public final ArrayList b;
        public final ArrayList c;
        public ComponentRegistrarProcessor d;

        public Builder() {
            UiExecutor uiExecutor = UiExecutor.j;
            this.b = new ArrayList();
            this.c = new ArrayList();
            this.d = ComponentRegistrarProcessor.h;
            this.a = uiExecutor;
        }
    }

    public ComponentRuntime(Executor executor, ArrayList arrayList, ArrayList arrayList2, ComponentRegistrarProcessor componentRegistrarProcessor) {
        EventBus eventBus = new EventBus(executor);
        this.e = eventBus;
        this.g = componentRegistrarProcessor;
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(Component.b(eventBus, EventBus.class, Subscriber.class, Publisher.class));
        arrayList3.add(Component.b(this, ComponentLoader.class, new Class[0]));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Component component = (Component) it.next();
            if (component != null) {
                arrayList3.add(component);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList4.add(it2.next());
        }
        ArrayList arrayList5 = new ArrayList();
        synchronized (this) {
            Iterator it3 = arrayList4.iterator();
            while (it3.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((Provider) it3.next()).get();
                    if (componentRegistrar != null) {
                        arrayList3.addAll(this.g.a(componentRegistrar));
                        it3.remove();
                    }
                } catch (InvalidRegistrarException e) {
                    it3.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e);
                }
            }
            Iterator it4 = arrayList3.iterator();
            while (it4.hasNext()) {
                Object[] array = ((Component) it4.next()).b.toArray();
                int length = array.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        Object obj = array[i];
                        if (obj.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                            if (this.d.contains(obj.toString())) {
                                it4.remove();
                                break;
                            }
                            this.d.add(obj.toString());
                        }
                        i++;
                    }
                }
            }
            if (this.a.isEmpty()) {
                CycleDetector.a(arrayList3);
            } else {
                ArrayList arrayList6 = new ArrayList(this.a.keySet());
                arrayList6.addAll(arrayList3);
                CycleDetector.a(arrayList6);
            }
            Iterator it5 = arrayList3.iterator();
            while (it5.hasNext()) {
                final Component component2 = (Component) it5.next();
                this.a.put(component2, new Lazy(new Provider() { // from class: com.google.firebase.components.a
                    @Override // com.google.firebase.inject.Provider
                    public final Object get() {
                        Component component3 = component2;
                        return component3.f.d(new RestrictedComponentContainer(component3, ComponentRuntime.this));
                    }
                }));
            }
            arrayList5.addAll(i(arrayList3));
            arrayList5.addAll(j());
            h();
        }
        Iterator it6 = arrayList5.iterator();
        while (it6.hasNext()) {
            ((Runnable) it6.next()).run();
        }
        Boolean bool = (Boolean) this.f.get();
        if (bool != null) {
            g(this.a, bool.booleanValue());
        }
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final synchronized Provider b(Qualified qualified) {
        Preconditions.a(qualified, "Null interface requested.");
        return (Provider) this.b.get(qualified);
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final synchronized Provider e(Qualified qualified) {
        LazySet lazySet = (LazySet) this.c.get(qualified);
        if (lazySet != null) {
            return lazySet;
        }
        return h;
    }

    public final void g(HashMap hashMap, boolean z) {
        ArrayDeque arrayDeque;
        for (Map.Entry entry : hashMap.entrySet()) {
            Component component = (Component) entry.getKey();
            Provider provider = (Provider) entry.getValue();
            int i = component.d;
            if (i == 1 || (i == 2 && z)) {
                provider.get();
            }
        }
        EventBus eventBus = this.e;
        synchronized (eventBus) {
            try {
                arrayDeque = eventBus.b;
                if (arrayDeque != null) {
                    eventBus.b = null;
                } else {
                    arrayDeque = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (arrayDeque != null) {
            Iterator it = arrayDeque.iterator();
            if (it.hasNext()) {
                it.next().getClass();
                d.i();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object, com.google.firebase.components.OptionalProvider] */
    /* JADX WARN: Type inference failed for: r6v4, types: [com.google.firebase.components.LazySet, java.lang.Object] */
    public final void h() {
        for (Component component : this.a.keySet()) {
            for (Dependency dependency : component.c) {
                if (dependency.b == 2 && !this.c.containsKey(dependency.a)) {
                    HashMap hashMap = this.c;
                    Qualified qualified = dependency.a;
                    Set set = Collections.EMPTY_SET;
                    ?? obj = new Object();
                    obj.b = null;
                    obj.a = Collections.newSetFromMap(new ConcurrentHashMap());
                    obj.a.addAll(set);
                    hashMap.put(qualified, obj);
                } else if (this.b.containsKey(dependency.a)) {
                    continue;
                } else {
                    int i = dependency.b;
                    if (i != 1) {
                        if (i != 2) {
                            HashMap hashMap2 = this.b;
                            Qualified qualified2 = dependency.a;
                            f7 f7Var = OptionalProvider.c;
                            q5 q5Var = OptionalProvider.d;
                            ?? obj2 = new Object();
                            obj2.a = f7Var;
                            obj2.b = q5Var;
                            hashMap2.put(qualified2, obj2);
                        }
                    } else {
                        throw new RuntimeException("Unsatisfied dependency for component " + component + ": " + dependency.a);
                    }
                }
            }
        }
    }

    public final ArrayList i(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Component component = (Component) it.next();
            if (component.e == 0) {
                Provider provider = (Provider) this.a.get(component);
                for (Qualified qualified : component.b) {
                    HashMap hashMap = this.b;
                    if (!hashMap.containsKey(qualified)) {
                        hashMap.put(qualified, provider);
                    } else {
                        arrayList2.add(new b((OptionalProvider) ((Provider) hashMap.get(qualified)), provider, 0));
                    }
                }
            }
        }
        return arrayList2;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.firebase.components.LazySet, java.lang.Object] */
    public final ArrayList j() {
        HashMap hashMap = this.c;
        ArrayList arrayList = new ArrayList();
        HashMap hashMap2 = new HashMap();
        for (Map.Entry entry : this.a.entrySet()) {
            Component component = (Component) entry.getKey();
            if (component.e != 0) {
                Provider provider = (Provider) entry.getValue();
                for (Qualified qualified : component.b) {
                    if (!hashMap2.containsKey(qualified)) {
                        hashMap2.put(qualified, new HashSet());
                    }
                    ((Set) hashMap2.get(qualified)).add(provider);
                }
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (!hashMap.containsKey(entry2.getKey())) {
                Qualified qualified2 = (Qualified) entry2.getKey();
                Set set = (Set) ((Collection) entry2.getValue());
                ?? obj = new Object();
                obj.b = null;
                obj.a = Collections.newSetFromMap(new ConcurrentHashMap());
                obj.a.addAll(set);
                hashMap.put(qualified2, obj);
            } else {
                LazySet lazySet = (LazySet) hashMap.get(entry2.getKey());
                Iterator it = ((Set) entry2.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new b(lazySet, (Provider) it.next(), 1));
                }
            }
        }
        return arrayList;
    }
}

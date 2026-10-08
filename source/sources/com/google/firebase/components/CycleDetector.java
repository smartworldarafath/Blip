package com.google.firebase.components;

import io.sentry.d;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class CycleDetector {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ComponentNode {
        public final Component a;
        public final HashSet b = new HashSet();
        public final HashSet c = new HashSet();

        public ComponentNode(Component component) {
            this.a = component;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Dep {
        public final Qualified a;
        public final boolean b;

        public Dep(Qualified qualified, boolean z) {
            this.a = qualified;
            this.b = z;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Dep) {
                Dep dep = (Dep) obj;
                if (dep.a.equals(this.a) && dep.b == this.b) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Boolean.valueOf(this.b).hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
        }
    }

    public static void a(ArrayList arrayList) {
        boolean z;
        boolean z2;
        HashMap hashMap = new HashMap(arrayList.size());
        Iterator it = arrayList.iterator();
        while (true) {
            int i = 0;
            if (it.hasNext()) {
                Component component = (Component) it.next();
                ComponentNode componentNode = new ComponentNode(component);
                for (Qualified qualified : component.b) {
                    if (component.e == 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    Dep dep = new Dep(qualified, !z2);
                    if (!hashMap.containsKey(dep)) {
                        hashMap.put(dep, new HashSet());
                    }
                    Set set = (Set) hashMap.get(dep);
                    if (!set.isEmpty() && z2) {
                        d.g("Multiple components provide ", qualified, ".");
                        return;
                    }
                    set.add(componentNode);
                }
            } else {
                Iterator it2 = hashMap.values().iterator();
                while (it2.hasNext()) {
                    for (ComponentNode componentNode2 : (Set) it2.next()) {
                        for (Dependency dependency : componentNode2.a.c) {
                            if (dependency.c == 0) {
                                Qualified qualified2 = dependency.a;
                                if (dependency.b == 2) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                Set<ComponentNode> set2 = (Set) hashMap.get(new Dep(qualified2, z));
                                if (set2 != null) {
                                    for (ComponentNode componentNode3 : set2) {
                                        componentNode2.b.add(componentNode3);
                                        componentNode3.c.add(componentNode2);
                                    }
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it3 = hashMap.values().iterator();
                while (it3.hasNext()) {
                    hashSet.addAll((Set) it3.next());
                }
                HashSet hashSet2 = new HashSet();
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    ComponentNode componentNode4 = (ComponentNode) it4.next();
                    if (componentNode4.c.isEmpty()) {
                        hashSet2.add(componentNode4);
                    }
                }
                while (!hashSet2.isEmpty()) {
                    ComponentNode componentNode5 = (ComponentNode) hashSet2.iterator().next();
                    hashSet2.remove(componentNode5);
                    i++;
                    Iterator it5 = componentNode5.b.iterator();
                    while (it5.hasNext()) {
                        ComponentNode componentNode6 = (ComponentNode) it5.next();
                        componentNode6.c.remove(componentNode5);
                        if (componentNode6.c.isEmpty()) {
                            hashSet2.add(componentNode6);
                        }
                    }
                }
                if (i == arrayList.size()) {
                    return;
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it6 = hashSet.iterator();
                while (it6.hasNext()) {
                    ComponentNode componentNode7 = (ComponentNode) it6.next();
                    if (!componentNode7.c.isEmpty() && !componentNode7.b.isEmpty()) {
                        arrayList2.add(componentNode7.a);
                    }
                }
                throw new RuntimeException("Dependency cycle detected: " + Arrays.toString(arrayList2.toArray()));
            }
        }
    }
}

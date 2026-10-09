package com.google.firebase.tracing;

import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.ComponentRegistrarProcessor;
import defpackage.n5;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ComponentMonitor implements ComponentRegistrarProcessor {
    @Override // com.google.firebase.components.ComponentRegistrarProcessor
    public final List a(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (Component component : componentRegistrar.getComponents()) {
            String str = component.a;
            if (str != null) {
                component = new Component(str, component.b, component.c, component.d, component.e, new n5(0, str, component), component.g);
            }
            arrayList.add(component);
        }
        return arrayList;
    }
}

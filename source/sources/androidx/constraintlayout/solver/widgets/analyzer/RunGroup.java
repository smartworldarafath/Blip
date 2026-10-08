package androidx.constraintlayout.solver.widgets.analyzer;

import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class RunGroup {
    public WidgetRun a;
    public ArrayList b;

    public static long a(DependencyNode dependencyNode, long j) {
        WidgetRun widgetRun = dependencyNode.d;
        ArrayList arrayList = dependencyNode.k;
        if (widgetRun instanceof HelperReferences) {
            return j;
        }
        int size = arrayList.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            Dependency dependency = (Dependency) arrayList.get(i);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.d != widgetRun) {
                    j2 = Math.min(j2, a(dependencyNode2, dependencyNode2.f + j));
                }
            }
        }
        DependencyNode dependencyNode3 = widgetRun.i;
        DependencyNode dependencyNode4 = widgetRun.h;
        if (dependencyNode == dependencyNode3) {
            long j3 = j - widgetRun.j();
            return Math.min(Math.min(j2, a(dependencyNode4, j3)), j3 - dependencyNode4.f);
        }
        return j2;
    }

    public static long b(DependencyNode dependencyNode, long j) {
        WidgetRun widgetRun = dependencyNode.d;
        ArrayList arrayList = dependencyNode.k;
        if (widgetRun instanceof HelperReferences) {
            return j;
        }
        int size = arrayList.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            Dependency dependency = (Dependency) arrayList.get(i);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.d != widgetRun) {
                    j2 = Math.max(j2, b(dependencyNode2, dependencyNode2.f + j));
                }
            }
        }
        DependencyNode dependencyNode3 = widgetRun.h;
        DependencyNode dependencyNode4 = widgetRun.i;
        if (dependencyNode == dependencyNode3) {
            long j3 = widgetRun.j() + j;
            return Math.max(Math.max(j2, b(dependencyNode4, j3)), j3 - dependencyNode4.f);
        }
        return j2;
    }
}

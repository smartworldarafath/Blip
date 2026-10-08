package androidx.constraintlayout.solver.widgets.analyzer;

import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DependencyNode implements Dependency {
    public final WidgetRun d;
    public int f;
    public int g;
    public WidgetRun a = null;
    public boolean b = false;
    public boolean c = false;
    public Type e = Type.j;
    public int h = 1;
    public DimensionDependency i = null;
    public boolean j = false;
    public final ArrayList k = new ArrayList();
    public final ArrayList l = new ArrayList();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Type {
        public static final Type j;
        public static final Type k;
        public static final Type l;
        public static final Type m;
        public static final Type n;
        public static final Type o;
        public static final Type p;
        public static final Type q;
        public static final /* synthetic */ Type[] r;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.analyzer.DependencyNode$Type] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.analyzer.DependencyNode$Type] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.analyzer.DependencyNode$Type] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.analyzer.DependencyNode$Type] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.analyzer.DependencyNode$Type] */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.analyzer.DependencyNode$Type] */
        /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.analyzer.DependencyNode$Type] */
        /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.analyzer.DependencyNode$Type] */
        static {
            ?? r0 = new Enum("UNKNOWN", 0);
            j = r0;
            ?? r1 = new Enum("HORIZONTAL_DIMENSION", 1);
            k = r1;
            ?? r2 = new Enum("VERTICAL_DIMENSION", 2);
            l = r2;
            ?? r3 = new Enum("LEFT", 3);
            m = r3;
            ?? r4 = new Enum("RIGHT", 4);
            n = r4;
            ?? r5 = new Enum("TOP", 5);
            o = r5;
            ?? r6 = new Enum("BOTTOM", 6);
            p = r6;
            ?? r7 = new Enum("BASELINE", 7);
            q = r7;
            r = new Type[]{r0, r1, r2, r3, r4, r5, r6, r7};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) r.clone();
        }
    }

    public DependencyNode(WidgetRun widgetRun) {
        this.d = widgetRun;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.Dependency
    public final void a(Dependency dependency) {
        ArrayList arrayList = this.l;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((DependencyNode) it.next()).j) {
                return;
            }
        }
        this.c = true;
        WidgetRun widgetRun = this.a;
        if (widgetRun != null) {
            widgetRun.a(this);
        }
        if (this.b) {
            this.d.a(this);
            return;
        }
        Iterator it2 = arrayList.iterator();
        DependencyNode dependencyNode = null;
        int i = 0;
        while (it2.hasNext()) {
            DependencyNode dependencyNode2 = (DependencyNode) it2.next();
            if (!(dependencyNode2 instanceof DimensionDependency)) {
                i++;
                dependencyNode = dependencyNode2;
            }
        }
        if (dependencyNode != null && i == 1 && dependencyNode.j) {
            DimensionDependency dimensionDependency = this.i;
            if (dimensionDependency != null) {
                if (dimensionDependency.j) {
                    this.f = this.h * dimensionDependency.g;
                } else {
                    return;
                }
            }
            d(dependencyNode.g + this.f);
        }
        WidgetRun widgetRun2 = this.a;
        if (widgetRun2 != null) {
            widgetRun2.a(this);
        }
    }

    public final void b(WidgetRun widgetRun) {
        this.k.add(widgetRun);
        if (this.j) {
            widgetRun.a(widgetRun);
        }
    }

    public final void c() {
        this.l.clear();
        this.k.clear();
        this.j = false;
        this.g = 0;
        this.c = false;
        this.b = false;
    }

    public void d(int i) {
        if (!this.j) {
            this.j = true;
            this.g = i;
            Iterator it = this.k.iterator();
            while (it.hasNext()) {
                Dependency dependency = (Dependency) it.next();
                dependency.a(dependency);
            }
        }
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder();
        sb.append(this.d.b.X);
        sb.append(":");
        sb.append(this.e);
        sb.append("(");
        if (this.j) {
            obj = Integer.valueOf(this.g);
        } else {
            obj = "unresolved";
        }
        sb.append(obj);
        sb.append(") <t=");
        sb.append(this.l.size());
        sb.append(":d=");
        sb.append(this.k.size());
        sb.append(">");
        return sb.toString();
    }
}

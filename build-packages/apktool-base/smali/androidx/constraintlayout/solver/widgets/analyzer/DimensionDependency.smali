.class Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
.super Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public m:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    .line 2
    .line 3
    .line 4
    instance-of p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->k:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->l:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 8
    .line 9
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 28
    .line 29
    invoke-interface {p1, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;->a(Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    return-void
.end method

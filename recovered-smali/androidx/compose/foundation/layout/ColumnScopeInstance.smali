.class public final Landroidx/compose/foundation/layout/ColumnScopeInstance;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/layout/ColumnScope;


# static fields
.field public static final a:Landroidx/compose/foundation/layout/ColumnScopeInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Z)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance p0, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

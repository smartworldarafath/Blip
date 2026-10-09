.class final Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Word$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/text/selection/BoundaryFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Word$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Word$1$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Word$1$1;->a:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Word$1$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/text/selection/SelectableInfo;I)J
    .locals 0

    .line 1
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/SelectableInfo;->d:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/TextLayoutResult;->i(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

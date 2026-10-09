.class final Landroidx/compose/foundation/text/EmptyMeasurePolicy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# static fields
.field public static final a:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

.field public static final b:La7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->a:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    .line 7
    .line 8
    new-instance v0, La7;

    .line 9
    .line 10
    const/16 v1, 0xf

    .line 11
    .line 12
    invoke-direct {v0, v1}, La7;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->b:La7;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    sget-object p3, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->b:La7;

    .line 10
    .line 11
    invoke-static {p1, p0, p2, p3}, Landroidx/compose/ui/layout/MeasureScope;->h0(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.class final Landroidx/compose/foundation/layout/SpacerMeasurePolicy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# static fields
.field public static final a:Landroidx/compose/foundation/layout/SpacerMeasurePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;->a:Landroidx/compose/foundation/layout/SpacerMeasurePolicy;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    .line 1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->f(J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p0, p2

    .line 14
    :goto_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->e(J)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    :cond_1
    new-instance p3, La7;

    .line 25
    .line 26
    const/16 p4, 0xf

    .line 27
    .line 28
    invoke-direct {p3, p4}, La7;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p0, p2, p3}, Landroidx/compose/ui/layout/MeasureScope;->h0(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

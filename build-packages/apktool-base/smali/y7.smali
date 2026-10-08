.class public final synthetic Ly7;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:J

.field public final synthetic l:F

.field public final synthetic m:I

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JFII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly7;->j:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-wide p2, p0, Ly7;->k:J

    .line 7
    .line 8
    iput p4, p0, Ly7;->l:F

    .line 9
    .line 10
    iput p5, p0, Ly7;->m:I

    .line 11
    .line 12
    iput p6, p0, Ly7;->n:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Ly7;->m:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    iget-object v0, p0, Ly7;->j:Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    iget-wide v1, p0, Ly7;->k:J

    .line 20
    .line 21
    iget v3, p0, Ly7;->l:F

    .line 22
    .line 23
    iget v6, p0, Ly7;->n:I

    .line 24
    .line 25
    invoke-static/range {v0 .. v6}, Landroidx/compose/material/DividerKt;->a(Landroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

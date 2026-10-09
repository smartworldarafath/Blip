.class public final synthetic Lbe;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:J

.field public final synthetic l:F

.field public final synthetic m:J

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JFJIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbe;->j:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-wide p2, p0, Lbe;->k:J

    .line 7
    .line 8
    iput p4, p0, Lbe;->l:F

    .line 9
    .line 10
    iput-wide p5, p0, Lbe;->m:J

    .line 11
    .line 12
    iput p7, p0, Lbe;->n:I

    .line 13
    .line 14
    iput p8, p0, Lbe;->o:I

    .line 15
    .line 16
    iput p9, p0, Lbe;->p:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lbe;->o:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    iget-object v0, p0, Lbe;->j:Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    iget-wide v1, p0, Lbe;->k:J

    .line 20
    .line 21
    iget v3, p0, Lbe;->l:F

    .line 22
    .line 23
    iget-wide v4, p0, Lbe;->m:J

    .line 24
    .line 25
    iget v6, p0, Lbe;->n:I

    .line 26
    .line 27
    iget v9, p0, Lbe;->p:I

    .line 28
    .line 29
    invoke-static/range {v0 .. v9}, Landroidx/compose/material/ProgressIndicatorKt;->b(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

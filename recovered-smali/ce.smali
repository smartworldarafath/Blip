.class public final synthetic Lce;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:F

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:J

.field public final synthetic m:F

.field public final synthetic n:J

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/ui/Modifier;JFJII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lce;->j:F

    .line 5
    .line 6
    iput-object p2, p0, Lce;->k:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-wide p3, p0, Lce;->l:J

    .line 9
    .line 10
    iput p5, p0, Lce;->m:F

    .line 11
    .line 12
    iput-wide p6, p0, Lce;->n:J

    .line 13
    .line 14
    iput p8, p0, Lce;->o:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0xc31

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 12
    .line 13
    .line 14
    move-result v9

    .line 15
    iget v0, p0, Lce;->j:F

    .line 16
    .line 17
    iget-object v1, p0, Lce;->k:Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    iget-wide v2, p0, Lce;->l:J

    .line 20
    .line 21
    iget v4, p0, Lce;->m:F

    .line 22
    .line 23
    iget-wide v5, p0, Lce;->n:J

    .line 24
    .line 25
    iget v7, p0, Lce;->o:I

    .line 26
    .line 27
    invoke-static/range {v0 .. v9}, Landroidx/compose/material/ProgressIndicatorKt;->a(FLandroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;I)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

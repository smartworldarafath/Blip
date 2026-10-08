.class public final synthetic Lze;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Z

.field public final synthetic n:Z

.field public final synthetic o:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic p:Lkotlin/jvm/functions/Function1;

.field public final synthetic q:Lkotlin/jvm/functions/Function1;

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/focus/FocusRequester;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lze;->j:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lze;->k:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lze;->l:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p4, p0, Lze;->m:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lze;->n:Z

    .line 13
    .line 14
    iput-object p6, p0, Lze;->o:Landroidx/compose/ui/focus/FocusRequester;

    .line 15
    .line 16
    iput-object p7, p0, Lze;->p:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    iput-object p8, p0, Lze;->q:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    iput p9, p0, Lze;->r:I

    .line 21
    .line 22
    iput p10, p0, Lze;->s:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

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
    iget p1, p0, Lze;->r:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    iget-object v0, p0, Lze;->j:Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    iget-object v1, p0, Lze;->k:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lze;->l:Ljava/lang/String;

    .line 22
    .line 23
    iget-boolean v3, p0, Lze;->m:Z

    .line 24
    .line 25
    iget-boolean v4, p0, Lze;->n:Z

    .line 26
    .line 27
    iget-object v5, p0, Lze;->o:Landroidx/compose/ui/focus/FocusRequester;

    .line 28
    .line 29
    iget-object v6, p0, Lze;->p:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    iget-object v7, p0, Lze;->q:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    iget v10, p0, Lze;->s:I

    .line 34
    .line 35
    invoke-static/range {v0 .. v10}, Lnet/blip/android/ui/components/SearchFieldKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/focus/FocusRequester;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

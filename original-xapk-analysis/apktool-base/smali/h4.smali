.class public final synthetic Lh4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic m:I

.field public final synthetic n:Z

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:Ljava/util/Map;

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILjava/util/Map;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh4;->j:Landroidx/compose/ui/text/AnnotatedString;

    .line 5
    .line 6
    iput-object p2, p0, Lh4;->k:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-object p3, p0, Lh4;->l:Landroidx/compose/ui/text/TextStyle;

    .line 9
    .line 10
    iput p4, p0, Lh4;->m:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lh4;->n:Z

    .line 13
    .line 14
    iput p6, p0, Lh4;->o:I

    .line 15
    .line 16
    iput p7, p0, Lh4;->p:I

    .line 17
    .line 18
    iput-object p8, p0, Lh4;->q:Ljava/util/Map;

    .line 19
    .line 20
    iput p9, p0, Lh4;->r:I

    .line 21
    .line 22
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
    iget p1, p0, Lh4;->r:I

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
    iget-object v0, p0, Lh4;->j:Landroidx/compose/ui/text/AnnotatedString;

    .line 18
    .line 19
    iget-object v1, p0, Lh4;->k:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    iget-object v2, p0, Lh4;->l:Landroidx/compose/ui/text/TextStyle;

    .line 22
    .line 23
    iget v3, p0, Lh4;->m:I

    .line 24
    .line 25
    iget-boolean v4, p0, Lh4;->n:Z

    .line 26
    .line 27
    iget v5, p0, Lh4;->o:I

    .line 28
    .line 29
    iget v6, p0, Lh4;->p:I

    .line 30
    .line 31
    iget-object v7, p0, Lh4;->q:Ljava/util/Map;

    .line 32
    .line 33
    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/text/BasicTextKt;->a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;I)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method

.class public final synthetic Lj4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic l:Z

.field public final synthetic m:Ljava/util/Map;

.field public final synthetic n:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic o:I

.field public final synthetic p:Z

.field public final synthetic q:I

.field public final synthetic r:I

.field public final synthetic s:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final synthetic t:Lkotlin/jvm/functions/Function1;

.field public final synthetic u:I

.field public final synthetic v:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj4;->j:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lj4;->k:Landroidx/compose/ui/text/AnnotatedString;

    .line 7
    .line 8
    iput-boolean p3, p0, Lj4;->l:Z

    .line 9
    .line 10
    iput-object p4, p0, Lj4;->m:Ljava/util/Map;

    .line 11
    .line 12
    iput-object p5, p0, Lj4;->n:Landroidx/compose/ui/text/TextStyle;

    .line 13
    .line 14
    iput p6, p0, Lj4;->o:I

    .line 15
    .line 16
    iput-boolean p7, p0, Lj4;->p:Z

    .line 17
    .line 18
    iput p8, p0, Lj4;->q:I

    .line 19
    .line 20
    iput p9, p0, Lj4;->r:I

    .line 21
    .line 22
    iput-object p10, p0, Lj4;->s:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 23
    .line 24
    iput-object p11, p0, Lj4;->t:Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    iput p12, p0, Lj4;->u:I

    .line 27
    .line 28
    iput p13, p0, Lj4;->v:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v11, p1

    .line 2
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lj4;->u:I

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 16
    .line 17
    .line 18
    move-result v12

    .line 19
    iget v0, p0, Lj4;->v:I

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 22
    .line 23
    .line 24
    move-result v13

    .line 25
    iget-object v0, p0, Lj4;->j:Landroidx/compose/ui/Modifier;

    .line 26
    .line 27
    iget-object v1, p0, Lj4;->k:Landroidx/compose/ui/text/AnnotatedString;

    .line 28
    .line 29
    iget-boolean v2, p0, Lj4;->l:Z

    .line 30
    .line 31
    iget-object v3, p0, Lj4;->m:Ljava/util/Map;

    .line 32
    .line 33
    iget-object v4, p0, Lj4;->n:Landroidx/compose/ui/text/TextStyle;

    .line 34
    .line 35
    iget v5, p0, Lj4;->o:I

    .line 36
    .line 37
    iget-boolean v6, p0, Lj4;->p:Z

    .line 38
    .line 39
    iget v7, p0, Lj4;->q:I

    .line 40
    .line 41
    iget v8, p0, Lj4;->r:I

    .line 42
    .line 43
    iget-object v9, p0, Lj4;->s:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 44
    .line 45
    iget-object v10, p0, Lj4;->t:Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/text/BasicTextKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method

.class public final synthetic Lwg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lkotlin/jvm/functions/Function2;

.field public final synthetic l:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic m:Lkotlin/jvm/functions/Function2;

.field public final synthetic n:Lkotlin/jvm/functions/Function2;

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Z

.field public final synthetic q:Z

.field public final synthetic r:Landroidx/compose/foundation/interaction/InteractionSource;

.field public final synthetic s:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic t:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic u:Landroidx/compose/material/TextFieldColors;

.field public final synthetic v:I

.field public final synthetic w:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;II)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/TextFieldType;->j:[Landroidx/compose/material/TextFieldType;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lwg;->j:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Lwg;->k:Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    iput-object p3, p0, Lwg;->l:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 11
    .line 12
    iput-object p4, p0, Lwg;->m:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput-object p5, p0, Lwg;->n:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    iput-object p6, p0, Lwg;->o:Lkotlin/jvm/functions/Function2;

    .line 17
    .line 18
    iput-boolean p7, p0, Lwg;->p:Z

    .line 19
    .line 20
    iput-boolean p8, p0, Lwg;->q:Z

    .line 21
    .line 22
    iput-object p9, p0, Lwg;->r:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 23
    .line 24
    iput-object p10, p0, Lwg;->s:Landroidx/compose/foundation/layout/PaddingValues;

    .line 25
    .line 26
    iput-object p11, p0, Lwg;->t:Landroidx/compose/ui/graphics/Shape;

    .line 27
    .line 28
    iput-object p12, p0, Lwg;->u:Landroidx/compose/material/TextFieldColors;

    .line 29
    .line 30
    iput p13, p0, Lwg;->v:I

    .line 31
    .line 32
    iput p14, p0, Lwg;->w:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/material/TextFieldType;->j:[Landroidx/compose/material/TextFieldType;

    .line 4
    .line 5
    move-object/from16 v14, p1

    .line 6
    .line 7
    check-cast v14, Landroidx/compose/runtime/Composer;

    .line 8
    .line 9
    move-object/from16 v1, p2

    .line 10
    .line 11
    check-cast v1, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget v1, v0, Lwg;->v:I

    .line 17
    .line 18
    or-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 21
    .line 22
    .line 23
    move-result v15

    .line 24
    iget v1, v0, Lwg;->w:I

    .line 25
    .line 26
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 27
    .line 28
    .line 29
    move-result v16

    .line 30
    iget-object v2, v0, Lwg;->j:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, v0, Lwg;->k:Lkotlin/jvm/functions/Function2;

    .line 33
    .line 34
    iget-object v4, v0, Lwg;->l:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 35
    .line 36
    iget-object v5, v0, Lwg;->m:Lkotlin/jvm/functions/Function2;

    .line 37
    .line 38
    iget-object v6, v0, Lwg;->n:Lkotlin/jvm/functions/Function2;

    .line 39
    .line 40
    iget-object v7, v0, Lwg;->o:Lkotlin/jvm/functions/Function2;

    .line 41
    .line 42
    iget-boolean v8, v0, Lwg;->p:Z

    .line 43
    .line 44
    iget-boolean v9, v0, Lwg;->q:Z

    .line 45
    .line 46
    iget-object v10, v0, Lwg;->r:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 47
    .line 48
    iget-object v11, v0, Lwg;->s:Landroidx/compose/foundation/layout/PaddingValues;

    .line 49
    .line 50
    iget-object v12, v0, Lwg;->t:Landroidx/compose/ui/graphics/Shape;

    .line 51
    .line 52
    iget-object v13, v0, Lwg;->u:Landroidx/compose/material/TextFieldColors;

    .line 53
    .line 54
    invoke-static/range {v2 .. v16}, Landroidx/compose/material/TextFieldImplKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;II)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    return-object v0
.end method

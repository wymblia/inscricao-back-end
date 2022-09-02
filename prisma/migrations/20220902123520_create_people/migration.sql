-- CreateTable
CREATE TABLE "people" (
    "person_id" SERIAL NOT NULL,
    "complete_name" TEXT NOT NULL,
    "social_name" TEXT,
    "gender" TEXT NOT NULL,
    "birth_date" TIMESTAMP(3) NOT NULL,
    "cpf" TEXT NOT NULL,
    "rg" TEXT,
    "phone_number" TEXT NOT NULL,
    "phone_number_2" TEXT,
    "business_phone" TEXT,
    "ethnicity_id" INTEGER,
    "user_id" INTEGER,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "updated_by" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "people_pkey" PRIMARY KEY ("person_id")
);

-- CreateIndex
CREATE UNIQUE INDEX "people_cpf_key" ON "people"("cpf");

-- CreateIndex
CREATE UNIQUE INDEX "people_rg_key" ON "people"("rg");

-- CreateIndex
CREATE UNIQUE INDEX "people_user_id_key" ON "people"("user_id");

-- AddForeignKey
ALTER TABLE "people" ADD CONSTRAINT "people_ethnicity_id_fkey" FOREIGN KEY ("ethnicity_id") REFERENCES "ethnicities"("ethnicity_id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "people" ADD CONSTRAINT "people_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("user_id") ON DELETE SET NULL ON UPDATE CASCADE;

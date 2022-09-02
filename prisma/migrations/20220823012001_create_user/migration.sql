/*
  Warnings:

  - The primary key for the `leads` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `leads` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "leads" DROP CONSTRAINT "leads_pkey",
DROP COLUMN "id",
ADD COLUMN     "lead_id" SERIAL NOT NULL,
ADD CONSTRAINT "leads_pkey" PRIMARY KEY ("lead_id");

-- CreateTable
CREATE TABLE "users" (
    "user_id" SERIAL NOT NULL,
    "username" TEXT NOT NULL,
    "complete_name" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "created_by" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "users_pkey" PRIMARY KEY ("user_id")
);
